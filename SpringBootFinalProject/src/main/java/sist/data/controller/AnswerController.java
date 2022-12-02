package sist.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sist.data.dto.AnswerDto;
import sist.data.service.AnswerService;
import sist.data.service.QuestionService;
import sist.data.service.TrainerService;

@Controller
public class AnswerController {
	
	@Autowired
	AnswerService service;
	
	@Autowired
	QuestionService qservice;
	
	@Autowired
	TrainerService tservice;
	
	
	//답변 폼 포워드 
	@GetMapping("/trainer/answer")
	public String answerform(@RequestParam int que_num, Model model)
	{ 
		model.addAttribute("que_num", que_num);
			
		return "/answer/answerform";
	}
		
	//답변등록 
	@GetMapping("/trainer/ainsert")
	public ModelAndView ainsert(@RequestParam int que_num, @RequestParam String trainer_name,
								@ModelAttribute AnswerDto dto) 
	{
		ModelAndView mv = new ModelAndView();
		
		dto.setTrainer_name(trainer_name);
		
		String trainer_num = tservice.getNumByTname(trainer_name);
		dto.setTrainer_num(trainer_num);
		
		mv.addObject("dto", dto);
		mv.addObject("que_num", que_num);
		mv.addObject("trainer_num", trainer_num);
		
		service.insertAnswer(dto);
		
		mv.setViewName("redirect:que_detail?");
		
		return mv;
	}
}
