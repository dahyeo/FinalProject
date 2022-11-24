package sist.data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import sist.data.dto.MemberDto;
import sist.data.mapper.MemberMapperInter;
import sist.data.service.MemberService;
import sist.data.service.MemberServiceInter;

@Controller
public class MyPageController {

	@Autowired
	MemberService service;
	
	@GetMapping("/mypage/home")
	public String home() {
		return "/mypage/home";
	}
	
	@GetMapping("/mypage/myprofil")
	public ModelAndView myprofil(String mem_id) {
		
		ModelAndView mview=new ModelAndView();
		
		MemberDto dto=service.getDataById(mem_id);
		
		mview.addObject("dto", dto);
		
		mview.setViewName("/mypage/myprofil");
		
		return mview;
	}
	
	@GetMapping("mypage/petprofil")
	public String petprofil() {
		return "/mypage/petprofil";
	}
}
