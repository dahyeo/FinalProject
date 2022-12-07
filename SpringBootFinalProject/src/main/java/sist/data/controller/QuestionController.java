package sist.data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sist.data.dto.AnswerDto;
import sist.data.dto.QuestionDto;
import sist.data.dto.TrainerprofileDto;
import sist.data.service.AnswerService;
import sist.data.service.QuestionService;
import sist.data.service.TrainerProfileService;

@Controller
public class QuestionController {
	@Autowired 
	QuestionService service;
	
	@Autowired
	AnswerService aservice;
	
	@Autowired
	TrainerProfileService tpservice;
	
	
	//훈련사 Q&A 메인 + 리스트(현재 페이징처리X)
	@GetMapping("/trainer/qna")
	public ModelAndView qlist(@RequestParam(value = "searchcolumn",required = false)String sc,
							  @RequestParam(value = "searchword",required = false)String sw)
	{
		//글 갯수
		int count = service.getCountOfQuestion(sc, sw);
		
		
		//리스트 
		List<QuestionDto> list = service.getListOfQuestion(sc, sw);
	
		
		//각 리스트에 따른 답변여부 
		for(QuestionDto q :list)
		{
			q.setAcount(aservice.getAllAnswer(q.getQue_num()).size());
		}
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("count", count);
		mv.addObject("list",list);
		
		mv.setViewName("/question/questionlist");
		
		return mv;
	}
	
	
	//질문폼 포워드 
	@GetMapping("/trainer/form")
	public String form()
	{	
		return "/question/questionform";
	}
	
	
	//질문 등록
	@GetMapping("/trainer/qinsert")
	public ModelAndView qinsert(@ModelAttribute QuestionDto dto, @RequestParam String mem_name)
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", dto);
		
		dto.setMem_name(mem_name);
		
		service.insertQuestion(dto);
		mv.setViewName("redirect:qna");
		return mv;
	}
	
	//디테일페이지 포워드 
	@GetMapping("/trainer/que_detail")
	public String detail(@RequestParam int que_num, Model model)
	{
		QuestionDto dto = service.getDataOfQuestionByNum(que_num);
		AnswerDto adto =  aservice.getAnswerByQueNum(que_num);
		int ans_count = aservice.getCountOfAnswer(que_num);
		if (ans_count>0) {
			TrainerprofileDto tpdto = tpservice.getDataByTnum(adto.getTrainer_num());
			int tCount = (int)aservice.getCountOfAnswerByTNum(adto.getTrainer_num());
			
			model.addAttribute("tpdto", tpdto);
			model.addAttribute("tCount", tCount);
			
		}
		
		model.addAttribute("dto", dto);
		model.addAttribute("adto", adto);
		model.addAttribute("ans_count", ans_count);
		
		return "/question/questiondetail";
	}
	
	@GetMapping("/trainer/qdelete")
	public String delete(@RequestParam int que_num)
	{
		service.deleteQuestion(que_num);
		
		return "redirect:qna";
	}
	
	//자주묻는질문 포워드 
	@GetMapping("/trainer/oq1")
	public String oq1()
	{
		return "/question/oftenquestion1";
	}
	
	@GetMapping("/trainer/oq2")
	public String oq2()
	{
		return "/question/oftenquestion2";
	}
	
	@GetMapping("/trainer/oq3")
	public String oq3()
	{
		return "/question/oftenquestion3";
	}
	
	@GetMapping("/trainer/oq4")
	public String oq4()
	{
		return "/question/oftenquestion4";
	}
	
	@GetMapping("/trainer/oq5")
	public String oq5()
	{
		return "/question/oftenquestion5";
	}
	
	@GetMapping("/trainer/oq6")
	public String oq6()
	{
		return "/question/oftenquestion6";
	}
	
	@GetMapping("/trainer/oq7")
	public String oq7()
	{
		return "/question/oftenquestion7";
	}
	
	@GetMapping("/trainer/oq8")
	public String oq8()
	{
		return "/question/oftenquestion8";
	}
	
}
