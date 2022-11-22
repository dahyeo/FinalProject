package sist.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TrainerController {

	@GetMapping("/trainer")
	public String start() {
		
		return "/trainer/trainermain";
	}
}
