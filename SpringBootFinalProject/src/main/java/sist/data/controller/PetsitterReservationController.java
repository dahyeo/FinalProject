package sist.data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import sist.data.dto.AnimalDto;
import sist.data.dto.ReservationDto;
import sist.data.service.AnimalService;
import sist.data.service.MemberService;
import sist.data.service.ReservationService;

@Controller
public class PetsitterReservationController {

	@Autowired
	ReservationService service;
	
	@Autowired
	MemberService mservice;
	
	@Autowired
	AnimalService aservice;
	
	@GetMapping("/petsitter")
	public String start() {
		
		return "/petsitter/petsittermain";
	}
	
	@GetMapping("/petsitter/resform")
	public String resform(Model model,HttpSession session) {
		
		//로그인 상태인지 아닌지 체크
		String loginok=(String)session.getAttribute("loginok");
								
		if(loginok==null)
			return "redirect:../login/main";
		else {
			String myid=(String)session.getAttribute("myid");
			
			String mem_num=mservice.getDataById(myid).getMem_num();
			AnimalDto dto=aservice.getDataByMemNum(mem_num);
			
			//로그인한 나의 mem_num 및 반려동물 정보 넘기기
			model.addAttribute("mem_num", mem_num);
			model.addAttribute("ani_num", dto.getAni_num());
			model.addAttribute("ani_photo", dto.getAni_photo());
			model.addAttribute("ani_name", dto.getAni_name());
			model.addAttribute("ani_gender", dto.getAni_gender());
			model.addAttribute("ani_type", dto.getAni_type());
			model.addAttribute("mem_addr", mservice.getDataById(myid).getMem_addr());
			
			return "/reservation/preservationform";
		}	
	}
	
	//insert
	@PostMapping("/petsitter/insert")
	public String resform(@ModelAttribute ReservationDto dto)
	{
					
		//insert
		service.insertReservation(dto);
			
		//목록으로 이동
		return "redirect:/";
	}
}
