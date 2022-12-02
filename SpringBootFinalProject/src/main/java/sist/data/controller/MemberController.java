package sist.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import sist.data.dto.AnimalDto;
import sist.data.dto.MemberDto;
import sist.data.dto.PartnerDto;
import sist.data.dto.TrainerDto;
import sist.data.service.AnimalService;
import sist.data.service.MemberService;
import sist.data.service.PartnerService;
import sist.data.service.TrainerService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@Autowired
	AnimalService aservice;
	
	@Autowired
	PartnerService pservice;
	
	@Autowired
	TrainerService tservice;
	
	//Id체크
	@GetMapping("/member/idcheck")
	@ResponseBody
	public Map<String, Integer> idCheckProcess(String mem_id) {
			
	Map<String, Integer> map=new HashMap<>();
			
	int n=service.getSearchId(mem_id);
	map.put("count", n);
			
	return map;
	}
	
	//일반회원가입
	@GetMapping("/member/normal")
	public String normalform() {
		
		return "/member/normalform";
	}
	
	//파트너회원가입(훈련사,펫시터)
	@GetMapping("/member/partner")
	public String partnerform() {
			
		return "/member/partnerform";
	}
		
	@PostMapping("/member/insert")
	public String insert(@ModelAttribute MemberDto dto,Model model,@RequestParam int status) {
				
		//status값 dto에 넣기
		MemberDto mdto=new MemberDto();
		mdto.setStatus(status);
		
		service.insertMember(dto);
		
		//member의 mem_num max값 넘기기
		int mem_num=service.getMaxNum();
		model.addAttribute("mem_num", mem_num);
		
		return "/member/membersuccess";
	}
	
	@GetMapping("/member/animalRegister")
	public String animalRegister(@RequestParam int mem_num,Model model) {
		
		model.addAttribute("mem_num", mem_num);
		return "/member/animalform";
	}
	
	@PostMapping("/member/animalinsert")
	public String insert(@ModelAttribute AnimalDto dto,
			@RequestParam MultipartFile upload,
			HttpSession session) {
		
		String path=session.getServletContext().getRealPath("/photo");
		
		if(upload.getOriginalFilename().equals(""))
			dto.setAni_photo(null);
		else {
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
			String photoname="f_"+sdf.format(new Date())+upload.getOriginalFilename();
			
			dto.setAni_photo(photoname);
			
			//실제 업로드
			try {
				upload.transferTo(new File(path+"//"+photoname));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		aservice.insertAnimal(dto);
		
		return "/member/animalsuccess";
	}
	
	//admin으로 로그인 시 applylist 볼수 있게
	@GetMapping("/member/applylist")
	public String goApplyList(Model model) {
		
		//관리자일 경우 로그인 후 main에 파트너 지원리스트 뜨도록
		List<TrainerDto> tlist=tservice.TrainerList();
		List<PartnerDto> plist=pservice.PartnerMuList();
		
		model.addAttribute("tlist", tlist);
		model.addAttribute("plist", plist);
		
		return "/member/applylist";
	}
	
	//훈련사 status 업데이트
	@GetMapping("/member/updateTrainerStatus")
	@ResponseBody
	public void updateTrainerStatus(String mem_num) {		
		
		service.updateTrainerStatus(mem_num);
		
	}
	
	//펫시터 status 업데이트
	@GetMapping("/member/updatePetsitterStatus")
	@ResponseBody
	public void updatePetsitterStatus(String mem_num) {		
			
		service.updatePetsitterStatus(mem_num);
			
	}
	
	//mem_num에 따른 status
	@GetMapping("/member/status")
	@ResponseBody
	public int showStatus(@RequestParam String mem_num) {
		
		//mem_num에 따른 status 반환
		int status=service.getStatus(mem_num);
				
		return status;
	}
	

}
