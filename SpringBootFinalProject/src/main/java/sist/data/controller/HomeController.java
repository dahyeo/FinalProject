package sist.data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import sist.data.dto.MemberDto;
import sist.data.dto.PartnerprofileDto;
import sist.data.dto.ReservationDto;
import sist.data.dto.TrainerprofileDto;
import sist.data.service.MemberService;
import sist.data.service.PartnerService;
import sist.data.service.PartnerprofileService;
import sist.data.service.ReservationService;
import sist.data.service.TrainerProfileService;
import sist.data.service.TrainerService;

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
	
	@Autowired
	TrainerService tservice;
	
	@Autowired
	TrainerProfileService tfservice;
	
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
		
		//로그인한 '나'가 일반 회원인지, 훈련사/파트너회원인지 
		String myid=(String)session.getAttribute("myid");
        MemberDto mdto=mservice.getDataById(myid);
		String mem_num=mdto.getMem_num();
		int status=mservice.getStatus(mem_num); //status가 0-일반회원,1-훈련사,2-파트너
		
		model.addAttribute("status", status);
		
		//status:0 - 내가 예약한 현황
		if(status==0) {
		
		//mem_num에 따른 예약 데이터
		List<ReservationDto> list=rservice.getAllDatas(mem_num);
		model.addAttribute("list", list);
		}
		
		//status:1 or 2 - 내가 예약받은 현황(나: 훈련사 또는 펫시터)
		//1.훈련사
		if(status==1) {
		
		String trainer_num=tservice.getMNum(mem_num);
		TrainerprofileDto tfdto=tfservice.getDataByTNum(trainer_num);
		String trainerprof_num=tfdto.getTrainerprof_num();
		
		List<ReservationDto> tflist=rservice.getDataByTFNum(trainerprof_num);
		model.addAttribute("tflist", tflist);
		}
		
		//2.펫시터
		if(status==2) {
		
		String partner_num=pservice.getMNum(mem_num);
		PartnerprofileDto pfdto=pfservice.getDataByPNum(partner_num);
		String partnerprof_num=pfdto.getPartnerprof_num();
		
		List<ReservationDto> pflist=rservice.getDataByPFNum(partnerprof_num);
		model.addAttribute("pflist", pflist);
		}
		
		return "/member/mypage";
	}
	
	@GetMapping("/beauty")
	public String map() {
		
		return "/beauty/beautyshop";
	}
	
}
