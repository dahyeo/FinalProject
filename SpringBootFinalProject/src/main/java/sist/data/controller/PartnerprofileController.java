package sist.data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.logging.log4j.util.PerformanceSensitive;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import sist.data.dto.MemberDto;
import sist.data.dto.PartnerDto;
import sist.data.dto.PartnerprofileDto;
import sist.data.service.MemberService;
import sist.data.service.PartnerService;
import sist.data.service.PartnerprofileService;

@Controller
public class PartnerprofileController {
	
	
	@Autowired
	PartnerprofileService service;
	
	@Autowired
	PartnerService pservice;
	
	@Autowired
	MemberService mservice;


	//리스트
	@GetMapping("/partnerprofile/partnerlist")
	public ModelAndView list()
	{
		ModelAndView model=new ModelAndView();
		
		//List<PartnerDto> list=pservice.PartnerMuList();
		//model.addObject("list", list);
		
		List<PartnerprofileDto> plist=service.getAllList();
		model.addObject("plist", plist);
		
		

		model.setViewName("/partnerprofile/partnerlist");
		
		return model;
	}
	
	//인서트
	@GetMapping("/partnerprofile/partnerform")
	public String proform(Model model,HttpSession session)
	{
		String myid=(String)session.getAttribute("myid");
		MemberDto mdto=mservice.getDataById(myid);
		String mem_num=mdto.getMem_num();
		
		String partner_num=pservice.getMNum(mem_num);
		String partner_name=pservice.getName(mem_num);
		String partner_gender=pservice.getGender(mem_num);
		String partner_date=pservice.getDate(mem_num);
		String partner_time=pservice.getTime(mem_num);
		String partner_exp=pservice.getExp(mem_num);
		
		model.addAttribute("partner_num", partner_num);
		model.addAttribute("partner_name", partner_name);
		model.addAttribute("partner_gender", partner_gender);
		model.addAttribute("partner_date", partner_date);
		model.addAttribute("partner_time", partner_time);
		model.addAttribute("partner_exp", partner_exp);
		
		
		
		return "/partnerprofile/partnerform";
	}

	@PostMapping("/partnerprofile/insert")
	public String proinsert(@ModelAttribute PartnerprofileDto dto)
		
	{
		  
	 service.insertPartnerProf(dto);

	 //return "redirect:partnerdetail?partnerprof_num="+pservice.getData(partnerprof_num);
	 return "redirect:partnerlist";
			
	}
	
	//클릭시 펫시터 소개
	@GetMapping("/partnerprofile/partnerdetail")
	public ModelAndView detailform(String partnerprof_num)
	{
		ModelAndView model=new ModelAndView();
		
		
		
		//num에 해당하는 dto
	
		 PartnerprofileDto pdto=service.getData(partnerprof_num);
		 
		  
		 List<PartnerprofileDto> plist=service.getSList(partnerprof_num);
		 model.addObject("plist", plist);
		 
		
		 model.addObject("pdto", pdto);
		model.setViewName("/partnerprofile/partnerdetail");
		
		return model;
	}
}