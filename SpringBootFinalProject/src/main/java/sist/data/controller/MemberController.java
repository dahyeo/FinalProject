package sist.data.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.data.dto.MemberDto;
import sist.data.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@GetMapping("/member/form")
	public String form() {
		
		return "/member/memberform";
	}
	
	//Id체크
	@GetMapping("/member/idcheck")
	@ResponseBody
	public Map<String, Integer> idCheckProcess(String mem_id) {
			
	Map<String, Integer> map=new HashMap<>();
			
	int n=service.getSearchId(mem_id);
	map.put("count", n);
			
	return map;
	}
	
	@PostMapping("/member/insert")
	public String insert(@ModelAttribute MemberDto dto) {
		
		service.insertMember(dto);
		return "/member/membersuccess";
	}
}
