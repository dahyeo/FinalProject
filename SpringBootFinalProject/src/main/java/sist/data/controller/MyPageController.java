package sist.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import sist.data.dto.AnimalDto;
import sist.data.dto.MemberDto;
import sist.data.service.AnimalService;
import sist.data.service.MemberService;

@Controller
public class MyPageController {

	@Autowired
	MemberService mservice;
	
	@Autowired
	AnimalService aservice;
	
	@GetMapping("/mypage/home")
	public String home() {
		return "/mypage/home";
	}
	
	@GetMapping("/mypage/myprofil")
	public ModelAndView myprofil(String mem_id) {
		
		ModelAndView mview=new ModelAndView();
		
		MemberDto dto=mservice.getDataById(mem_id);
		
		mview.addObject("dto", dto);
		
		mview.setViewName("/mypage/myprofil");
		
		return mview;
	}
	
	@GetMapping("mypage/petprofil")
	public ModelAndView petprofil(String mem_num) {
		ModelAndView mview=new ModelAndView();
		
		AnimalDto dto=aservice.getDataByMemNum(mem_num);
		mview.addObject("dto", dto);
		
		mview.setViewName("/mypage/petprofil");
		return mview;
	}
	
	@GetMapping("mypage/hpupdateform")
	public ModelAndView hpupdateform(String mem_id) {
		ModelAndView mview=new ModelAndView();
		
		MemberDto dto=mservice.getDataById(mem_id);
		mview.addObject("dto", dto);
		
		mview.setViewName("/mypage/hpupdateform");
		return mview;
	}
	
	@PostMapping("mypage/hpupdate")
	public String hpupdate(MemberDto dto) {
		mservice.updateMember(dto);
		
		return "redirect:home";
	}
	@GetMapping("mypage/addrupdateform")
	public ModelAndView addrupdateform(String mem_id) {
		ModelAndView mview=new ModelAndView();
		
		MemberDto dto=mservice.getDataById(mem_id);
		mview.addObject("dto", dto);
		
		mview.setViewName("/mypage/addrupdateform");
		return mview;
	}
	@PostMapping("mypage/addrupdate")
	public String addrupdate(MemberDto dto) {
		mservice.updateMember(dto);
		
		return "redirect:home";
	}
}
