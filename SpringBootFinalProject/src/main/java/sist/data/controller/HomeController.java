package sist.data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import sist.data.dto.MemberDto;
import sist.data.dto.ReservationDto;
import sist.data.service.MemberService;
import sist.data.service.PartnerService;
import sist.data.service.PartnerprofileService;
import sist.data.service.ReservationService;

@Controller
public class HomeController {
	
	@Autowired
	MemberService mservice;
	
	@Autowired
	ReservationService rservice;
	
	@Autowired
	PartnerService pservice;
	
	@Autowired
	PartnerprofileService pfservice;
	
	@GetMapping("/")
	public String start() {
		
		return "/layout/main";
	}
	
	@GetMapping("/chatbot")
	public String chatbot() {
		
		return "/chatbot/chat";
	}
	
	@GetMapping("/mypage")
	public String mypage(Model model,HttpSession session) {
		
		//내가 예약한 현황
		//mem_num에 따른 예약 데이터
		String myid=(String)session.getAttribute("myid");
		MemberDto mdto=mservice.getDataById(myid);
		
		String mem_num=mdto.getMem_num();
		List<ReservationDto> list=rservice.getAllDatas(mem_num);
		
		model.addAttribute("list", list);
		
		//내가 예약받은 현황(나: 훈련사 또는 펫시터)
		String partner_num=pservice.getMNum(mem_num);
		//pfservice.get
		
		return "/member/mypage";
	}
	
	@GetMapping("/beauty")
	public String map() {
		
		return "/beauty/beautyshop";
	}
	
}
