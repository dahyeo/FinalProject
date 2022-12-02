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
import sist.data.service.AnswerService;
import sist.data.service.QuestionService;

@Controller
public class QuestionController {
	@Autowired 
	QuestionService service;
	
	@Autowired
	AnswerService aservice;
	
	//훈련사 Q&A 메인 + 리스트(현재 페이징처리X)
	@GetMapping("/trainer/qna")
	public ModelAndView qlist(@RequestParam(value = "searchcolumn",required = false)String sc,
							  @RequestParam(value = "searchword",required = false)String sw)
	{
		//글 갯수
		int count = service.getCountOfQuestion(sc, sw);
		
		
		//리스트 
		List<QuestionDto> list = service.getListOfQuestion(sc, sw);
	
		
		//각 리스트에 따른 답변
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
		
		model.addAttribute("dto", dto);
		model.addAttribute("adto", adto);
		model.addAttribute("ans_count", ans_count);
		
		return "/question/questiondetail";
	}
	
	@GetMapping("/trainer/delete")
	public String delete(@RequestParam int que_num)
	{
		service.deleteQuestion(que_num);
		
		return "redirect:../qna";
	}
}
