package sist.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import sist.data.dto.PartnerDto;
import sist.data.service.PartnerService;

@Controller
public class PartnerServiceController {
	
	@Autowired
	PartnerService service;
	
	@GetMapping("/partnerService/form2")
	public String pform2()
	{
		return "/partnerService/partnerform";
	}

	@PostMapping("/partnerService/insert")
	public String pinsert(@ModelAttribute PartnerDto dto)
	{
		service.insertPartner(dto);
		
		return "/partnerService/partnerlist";
	}
	
	@GetMapping("/partnerService/partnerlist")
	public String plist()
	{
		service.PartnerList();
		return "/partnerService/partnerlist";
	}
}
