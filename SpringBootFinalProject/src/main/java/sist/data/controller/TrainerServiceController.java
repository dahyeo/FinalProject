package sist.data.controller;



import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sist.data.dto.TrainerDto;
import sist.data.service.MemberService;
import sist.data.service.TrainerService;


@Controller
public class TrainerServiceController {

	@Autowired
	TrainerService service;
	
	@Autowired
	MemberService mservice;
	
	//insert폼 뜨게
	@GetMapping("/trainerService/trainerform")
	public String tform(HttpSession session)
	{
		//로그인 상태인지 아닌지 체크
		String loginok=(String)session.getAttribute("loginok");
		
		if(loginok==null)
			return "redirect:../login/main";
		else {
			return "/trainerService/trainerform";
		}
		
	}
	
	//insert
	@PostMapping("/trainerService/insert")
	public String taddform(@ModelAttribute TrainerDto dto,
			@RequestParam MultipartFile upload,
			HttpSession session,
			@RequestParam String mem_id)
	{
		String path=session.getServletContext().getRealPath("/photo");
		System.out.println(path);
		
		if(upload.getOriginalFilename().equals(""))
			dto.setTrainer_photo(null);
		else {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
			String photoname="f_"+sdf.format(new Date())+upload.getOriginalFilename();
			
			dto.setTrainer_photo(photoname);
			
			//실제업로드
			try {
				upload.transferTo(new File(path+"\\"+photoname));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		//로그인한 id값으로부터 mem_num 구해서 넣기
		String mem_num=mservice.getNum(mem_id);
		dto.setMem_num(mem_num);
		
		//insert
		service.insertTrainer(dto);
		
		//목록으로 이동
		return "/trainerService/trainerlist";
	}
	
	@GetMapping("/trainerService/trainerlist")
	public ModelAndView tlist() 
	{
		ModelAndView model=new ModelAndView();
		
		List<TrainerDto> list= service.TrainerList();
		model.addObject("list", list);
		model.setViewName("/trainerService/trainerlist");
		
		return model;
	}
}
