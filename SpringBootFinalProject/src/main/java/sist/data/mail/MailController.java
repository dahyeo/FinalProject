package sist.data.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MailController {

	@Autowired
	MailService service;
	
	@PostMapping("/mail")
	public @ResponseBody void sendEmail() {
		
		service.sendMail();
	}
}