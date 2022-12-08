package sist.data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.data.dto.AnimalDto;
import sist.data.dto.ReservationDto;
import sist.data.dto.TrainerprofileDto;
import sist.data.service.AnimalService;
import sist.data.service.MemberService;
import sist.data.service.ReservationService;
import sist.data.service.TrainerProfileService;

@Controller
public class TrainerReservationController {

	@Autowired
	ReservationService service;
	
	@Autowired
	MemberService mservice;
	
	@Autowired
	AnimalService aservice;
	
	@Autowired
	TrainerProfileService tfservice;
	
	@GetMapping("/trainer")
	public String start() {
		
		return "/trainer/trainermain";
	}
	
	@GetMapping("/trainer/resform")
	public String resform(Model model,HttpSession session,String trainerprof_num) {
		
		//로그인 상태인지 아닌지 체크
		String loginok=(String)session.getAttribute("loginok");
						
		if(loginok==null)
			return "redirect:../login/main";
		else {
			String myid=(String)session.getAttribute("myid");
			
			String mem_num=mservice.getDataById(myid).getMem_num();
			String mem_name=mservice.getDataById(myid).getMem_name();
			String mem_phone=mservice.getDataById(myid).getMem_phone();
			AnimalDto dto=aservice.getDataByMemNum(mem_num);
			
			TrainerprofileDto tfdto=tfservice.getData(trainerprof_num);
			String trainerprof_price=tfdto.getTrainerprof_price();
			
			//로그인한 나의 mem_num 및 반려동물 정보 넘기기
			model.addAttribute("mem_num", mem_num);
			model.addAttribute("ani_num", dto.getAni_num());
			model.addAttribute("ani_photo", dto.getAni_photo());
			model.addAttribute("ani_name", dto.getAni_name());
			model.addAttribute("ani_gender", dto.getAni_gender());
			model.addAttribute("ani_type", dto.getAni_type());
			model.addAttribute("mem_addr", mservice.getDataById(myid).getMem_addr());
			
			//trainerprof_num 넘기기_dh1207
			model.addAttribute("trainerprof_num", trainerprof_num);
			model.addAttribute("trainerprof_price", trainerprof_price);
			
			return "/reservation/treservationform";
		}	
	}
	
	//insert
	@PostMapping("/trainer/insert")
	@ResponseBody
	public void resform(@ModelAttribute ReservationDto dto)
	{
			
		//insert
		service.insertReservation(dto);
		
	}
}
