package sist.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sist.data.dto.AnimalDto;
import sist.data.dto.MemberDto;
import sist.data.dto.ReviewDto;
import sist.data.dto.TrainerDto;
import sist.data.service.AnimalService;
import sist.data.service.MemberService;
import sist.data.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService service;

	@Autowired
	MemberService mservice;

	@Autowired
	AnimalService aservice;

	@GetMapping("/review")
	public String petsitter(Model model, HttpSession session) {
		String loginok = (String) session.getAttribute("loginok");

		if (loginok == null)
			return "redirect:../login/main";
		else {
			String myid = (String) session.getAttribute("myid");

			String mem_num = mservice.getDataById(myid).getMem_num();
			AnimalDto dto = aservice.getDataByMemNum(mem_num);

			model.addAttribute("mem_num", mem_num);
			model.addAttribute("ani_num", dto.getAni_num());
			model.addAttribute("ani_photo", dto.getAni_photo());
			model.addAttribute("ani_name", dto.getAni_name());
			model.addAttribute("ani_gender", dto.getAni_gender());
			model.addAttribute("ani_type", dto.getAni_type());
			model.addAttribute("mem_addr", mservice.getDataById(myid).getMem_addr());
		}

		return "/review/review";
	}

	// insert
	@PostMapping("/review/insert")
	public String rform(@ModelAttribute ReviewDto dto, @RequestParam MultipartFile upload, HttpSession session) {
		String path = session.getServletContext().getRealPath("/photo");
		System.out.println(path);

		if (upload.getOriginalFilename().equals(""))
			dto.setRev_photo(null);
		else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String photoname = "f_" + sdf.format(new Date()) + upload.getOriginalFilename();

			dto.setRev_photo(photoname);

			// 실제업로드
			try {
				upload.transferTo(new File(path + "\\" + photoname));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// 로그인한 id값으로부터 mem_num 구해서 넣기
		String mem_id = (String) session.getAttribute("myid");
		String mem_num = mservice.getNum(mem_id);
		dto.setMem_num(mem_num);

		// insert
		service.insertReview(dto);

		// 목록으로 이동
		return "/review/reviewsuccess";
	}

	@GetMapping("/review/petsitter")
	public String list(Model model,HttpSession session) {
		
		//반려동물 이름
		String myid=(String)session.getAttribute("myid");
	    MemberDto mdto=mservice.getDataById(myid);
	    String mem_num=mdto.getMem_num();
	    String mem_addr=mdto.getMem_addr();
	    
	    AnimalDto adto=aservice.getDataByMemNum(mem_num);
	    String ani_name=adto.getAni_name();
	    String ani_photo=adto.getAni_photo();
		
		List<ReviewDto> list = service.ReviewList();

		//ReviewDto dto=service.getData(null);
		//SimpleDateFormat sdf=new SimpleDateFormat("yyyy.MM.dd");
		
		model.addAttribute("list", list);
		model.addAttribute("count", list.size());
		model.addAttribute("ani_name", ani_name);
		model.addAttribute("ani_photo", ani_photo);
		model.addAttribute("mem_addr", mem_addr);

		return "/review/petsitterreview";
	}

}
