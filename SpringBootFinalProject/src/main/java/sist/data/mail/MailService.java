package sist.data.mail;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

@Service
public class MailService {

	@Autowired
	private JavaMailSender javaMailSender;
	
	public void sendMail() {
		
		String sendTo="wjdek0215@naver.com";
		String mailTitle="[WAYO]와요 파트너로 승인되셨습니다.";
		
		MimeMessagePreparator preparator=new MimeMessagePreparator() {
			
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				// TODO Auto-generated method stub
				final MimeMessageHelper message=new MimeMessageHelper(mimeMessage, "UTF-8");
				
				message.setTo(sendTo);
				message.setFrom("dahyeondeveloper@naver.com");	
				message.setSubject(mailTitle);
				
				String mailContext="<html><body>";
				mailContext+="<h1 style='text-align:center;'>와요 파트너로 승인되셨어요!</h1>\n"
				+"<h2 style='text-align:center;'>🐶함께 아름다운 반려생활 만들어봐요🐱</h2>\n"
				+"<img src='https://wayopet.com/static/images/apply/tutor.png' style='margin-left:200px;'>";
				mailContext+="</body></html>";
				message.setText(mailContext,true);

				}
		};
		
		javaMailSender.send(preparator);
	
		
//		ArrayList<String> toUserList=new ArrayList<>();
//		
//		toUserList.add("wjdek02@gmail.com");
//		toUserList.add("dahyeondeveloper@gmail.com");
//		toUserList.add("dahyeondeveloper@naver.com");
//		
//		int toUserSize=toUserList.size();
		
//		SimpleMailMessage simpleMessage=new SimpleMailMessage();
//		
//		simpleMessage.setTo("dahyeondeveloper@naver.com");
//		simpleMessage.setFrom("dahyeondeveloper@naver.com");
//		simpleMessage.setSubject("제목");
//		simpleMessage.setText("내용");
//		
//		javaMailSender.send(simpleMessage);
	}
}