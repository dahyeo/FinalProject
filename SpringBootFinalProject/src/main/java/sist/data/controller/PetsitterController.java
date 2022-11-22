package sist.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PetsitterController {

	@GetMapping("/petsitter")
	public String start() {
		
		return "/petsitter/petsittermain";
	}
}
