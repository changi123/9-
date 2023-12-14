package com.shinhan.model;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailSendOneAskService {
	@Autowired
	private JavaMailSenderImpl mailSender;


	
	// 이메일 보낼 양식!
	public String joinEmail(String email , String oneask_title) {
		System.out.println(oneask_title);
		String setFrom = "hcghcg17@gmail.co.kr"; // email-config에 설정한 자신의 이메일 주소를 입력
		String toMail = email;
		String title = oneask_title+ " 답변 알림 이메일 입니다."; // 이메일 제목
		String content = oneask_title + // html 형식으로 작성 !
				"<br><br>" + "답변은 1:1 문의를 확인하세요"; // 이메일 내용 삽입
		mailSend(setFrom, toMail, title, content);
		return content;
		
	}

	// 이메일 전송 메소드
	public void mailSend(String setFrom, String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능하다.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content, true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}
