package sist.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sist.data.dto.AnimalDto;
import sist.data.dto.AnswerDto;
import sist.data.dto.MemberDto;
import sist.data.dto.QuestionDto;
import sist.data.service.AnimalService;
import sist.data.service.AnswerService;
import sist.data.service.MemberService;
import sist.data.service.QuestionService;
import sist.data.service.TrainerService;

@Controller
public class AnswerController {
	
	@Autowired
	AnswerService service;
	
	@Autowired
	TrainerService tservice;
	
	@Autowired
	MemberService mservice;
	
	@Autowired
	QuestionService qservice;
	
	@Autowired
	AnimalService anservice;
	
	
	//답변 폼 포워드 
	@GetMapping("/trainer/answer")
	public String answerform(@RequestParam int que_num, Model model)
	{ 	QuestionDto qdto = qservice.getDataOfQuestionByNum(que_num);
		AnimalDto andto = anservice.getDataByMemNum(mservice.getMNumByMName(qservice.getNameByNum(que_num)));
	
		model.addAttribute("que_num", que_num);
		model.addAttribute("qdto", qdto);
		model.addAttribute("andto", andto);
			
		return "/answer/answerform";
	}
		
	//답변등록 
	@GetMapping("/trainer/ainsert")
	public ModelAndView ainsert(@RequestParam int que_num, @RequestParam String trainer_name,
								@ModelAttribute AnswerDto dto) 
	{
		ModelAndView mv = new ModelAndView();
		
		String trainer_num = tservice.getNumByTname(trainer_name);
		dto.setTrainer_num(trainer_num);
		
		mv.addObject("dto", dto);
		mv.addObject("que_num", que_num);
		
		service.insertAnswer(dto);
		
		mv.setViewName("redirect:que_detail?");
		
		return mv;
	}
}
