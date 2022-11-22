package sist.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {

	
	
	@GetMapping("/mypage/home")
	public String home() {
		return "/mypage/home";
	}
	
	@GetMapping("/mypage/myprofil")
	public String myprofil() {
		return "/mypage/myprofil";
	}
	
	@GetMapping("mypage/petprofil")
	public String petprofil() {
		return "/mypage/petprofil";
	}
}
