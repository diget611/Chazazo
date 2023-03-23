package kh.spring.chazazo.common.email;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class MailSendService {
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	private int authNum;
	
	// 인증용 난수 발생(6자리)
	public void makeRandomNum() {
		Random rd = new Random();
		int num = rd.nextInt(888888) + 111111;
		System.out.println("################");
		System.out.println("인증번호 : " + num);
		System.out.println("################");
		authNum = num;
	}
	
	// 이메일 양식
	public String joinEmail(String email) {
		makeRandomNum();
		// 발송하는 이메일 주소
		String setFrom = "shlee6271@gmail.com";
		String toMail = email;
		// 이메일 제목
		String title = "회원가입 인증 이메일입니다.";
		// 이메일 내용
		String content = "회원가입을 환영합니다.<br><br>"
				+ "인증번호는 <strong>" + authNum + "</strong> 입니다."
				+ "해당 인증번호를 인증번호 확인란에 입력해주세요.";
		
		mailSend(setFrom, toMail, title, content);
		return Integer.toString(authNum);
	}
	
	// 이메일 전송 메소드
	public void mailSend(String setFrom, String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		// true 값을 전달하면 multipart 형식의 메세지 전달 가능, 문자 인코딩 설정도 가능
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 값은 html 형식 전송, 작성하지 않으면 단순 텍스트
			helper.setText(content, true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}
}
