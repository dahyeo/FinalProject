package sist.data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sist.data.dto.MemberDto;
import sist.data.service.MemberService;

@Controller
public class LoginController {

	@Autowired
	MemberService service;
	
	@GetMapping("/login/main")
	public String form(HttpSession session,Model model) {
		
		//로그인 상태인지 아닌지 체크
		String loginok=(String)session.getAttribute("loginok");
		
		//폼의 id
		String myid=(String)session.getAttribute("myid");
		
		if(loginok==null)
			return "/login/loginform";
		else {
			
			//로그인 중에는 로그인한 이름 저장
			String name=service.getName(myid);
			model.addAttribute("name", name);
			
			return "/login/logoutform";
		}
	}
	
	@PostMapping("/login/loginprocess")
	public String loginProc(@RequestParam String mem_id,
			@RequestParam String mem_pass,
			@RequestParam(required = false) String cbsave,
			HttpSession session) {
		
		int check=service.getIdPassCheck(mem_id, mem_pass);
		
		if(check==1) {
			session.setMaxInactiveInterval(60*60*8); //8시간 저장
			
			MemberDto dto=service.getDataById(mem_id);
			
			session.setAttribute("myid", mem_id);
			session.setAttribute("loginok", "yes");
			session.setAttribute("saveok", cbsave);
			session.setAttribute("loginname", dto.getMem_name());
			
			return "redirect:main";
		}else {
			return "/member/passfail";
		}			
	}
	
	@GetMapping("/login/logoutprocess")
	public String logoutProc(HttpSession session) {
		 
		session.removeAttribute("loginok");
		return "redirect:/";
	}
}
