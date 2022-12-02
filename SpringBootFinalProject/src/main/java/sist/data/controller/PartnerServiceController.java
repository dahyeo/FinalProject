package sist.data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sist.data.dto.PartnerDto;
import sist.data.service.MemberService;
import sist.data.service.PartnerService;

@Controller
public class PartnerServiceController {
	
	@Autowired
	PartnerService service;
	
	@Autowired
	MemberService mservice;
	
	@GetMapping("/partnerService/form2")
	public String pform2(HttpSession session)
	{
		//로그인 상태인지 아닌지 체크
		String loginok=(String)session.getAttribute("loginok");
				
		if(loginok==null)
			return "redirect:../login/main";
		else {
		
			return "/partnerService/partnerform";
		}
		
	}

	@PostMapping("/partnerService/insert")
	public String pinsert(@ModelAttribute PartnerDto dto,@RequestParam String mem_id)
	{
		//로그인한 id값으로부터 mem_num 구해서 넣기
		String mem_num=mservice.getNum(mem_id);
		dto.setMem_num(mem_num);
		
		service.insertPartner(dto);
		
		return "/partnerService/partnerlist";
	}
	
	@GetMapping("/partnerService/partnerlist")
	public String plist()
	{
		service.PartnerList();
		return "/partnerService/partnerlist";
	}
}