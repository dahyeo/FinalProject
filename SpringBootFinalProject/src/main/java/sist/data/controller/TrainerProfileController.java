package sist.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sist.data.dto.MemberDto;
import sist.data.dto.TrainerDto;
import sist.data.dto.TrainerprofileDto;
import sist.data.service.MemberService;
import sist.data.service.TrainerProfileService;
import sist.data.service.TrainerService;

@Controller
public class TrainerProfileController {
	
	@Autowired
	TrainerProfileService service;
	
	@Autowired
	TrainerService tservice;
	
	@Autowired
	MemberService mservice;


	
	//리스트 뜨게
	@GetMapping("/trainerprofile/trainerlist")
	public ModelAndView tlist()
	{
		ModelAndView model=new ModelAndView();
		
		
		 //List<TrainerDto> list=tservice.TrainerMuList();
		// model.addObject("list",list);
		 
		 List<TrainerprofileDto> tlist=service.getAllList(); 
		 model.addObject("tlist",tlist);
		 
		 model.setViewName("/trainerprofile/trainerlist");
		
		return model;
	}
	
	//insert 폼 뜨게
	@GetMapping("/trainerprofile/trainerform")
	public String tform(Model model, HttpSession session)
	{
		String myid=(String)session.getAttribute("myid");
		MemberDto mdto=mservice.getDataById(myid);
		String mem_num=mdto.getMem_num();
		
		String trainer_num=tservice.getMNum(mem_num);
		String trainer_name=tservice.getName(mem_num);
		String trainer_career=tservice.getCareer(mem_num);
		String trainer_loc=tservice.getLoc(mem_num);
		String trainer_content=tservice.getContent(mem_num);
		String trainer_date=tservice.getDate(mem_num);
		String trainer_photo=tservice.getPhoto(mem_num);
	
		model.addAttribute("trainer_num", trainer_num);
		model.addAttribute("trainer_name", trainer_name);
		model.addAttribute("trainer_career", trainer_career);
		model.addAttribute("trainer_loc", trainer_loc);
		model.addAttribute("trainer_content", trainer_content);
		model.addAttribute("trainer_date", trainer_date);
		model.addAttribute("trainer_photo", trainer_photo);
		
		return "/trainerprofile/trainerform";
		
	
	}
	
	
	//insert
	@PostMapping("/trainerprofile/insert")
	public String troinsert(@ModelAttribute TrainerprofileDto dto)
	{
		service.insertTrainerProf(dto);
		
		return "redirect:trainerlist"; 
	}
	
	//클릭시 디테일 페이지
	@GetMapping("/trainerprofile/trainerdetail")
	public ModelAndView tdetailform(String trainerprof_num)
	{
		ModelAndView model=new ModelAndView();
		
		TrainerprofileDto tdto=service.getData(trainerprof_num);
		
		List<TrainerprofileDto> tlist=service.getSList(trainerprof_num);
		model.addObject("tlist", tlist);
		
		model.addObject("tdto",tdto);
		model.setViewName("/trainerprofile/trainerdetail");
		
		return model;
	}

}
