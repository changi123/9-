package com.shinhan.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shinhan.dto.MemVO;
import com.shinhan.model.MailSendService;
import com.shinhan.model.MyPageService;
import com.shinhan.model.RegisterService;

import lombok.RequiredArgsConstructor;
import oracle.jdbc.proxy.annotation.Post;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("register")
@RequiredArgsConstructor
public class RegisterController {
//	
 
	final RegisterService rService;
	final MyPageService mService;
	final MailSendService MailSendService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);

	//카카오 정보로 회원가입 시 사용자정보 session에 저장
	@RequestMapping(value = "registerType.do", method = {RequestMethod.GET, RequestMethod.POST})
	public void registerType(String email, String name, String id, HttpSession session) {
		session.setAttribute("email", email);
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		session.setAttribute("kakao", email==null?0:1);
	}

	@GetMapping("registerForm.do")
	public String registerForm(Model model) {
//		System.out.println("registerForm.do");
		List<MemVO> mlist = rService.selectAll();
		model.addAttribute("mlist", mlist);
		return "register/registerForm";
	}

	@RequestMapping(value = "idCheck.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String idCheck(String mem_id) {
		int result = rService.idCheck(mem_id);
		if (result == 1) {
			return "false";
		} else {
			return "true";
		}

	}

	@RequestMapping(value = "codeCheck.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String codeCheck(String mem_code, HttpSession session) {
		int result = rService.codeCheck(mem_code);
		if (result == 1) {
			return "true";
		} else {
			return "false";
		}

	}

	@PostMapping("register.do")
	public String register(Model model, MemVO mem, HttpSession session) {
		int result = rService.insertMember(mem);
		String login_id = mem.getMem_id();
		MemVO loginmem = mService.getMember(login_id);
		session.setAttribute("loginmem", loginmem);
		return "home";
	}
	
	@GetMapping("emailCheckPage.do")
	public String emailCheckPage() {

		return "register/emailCheck";
	}

	@GetMapping("emailCheck.do")
	@ResponseBody
	public String emailCheck(@RequestParam("email") String email) {
		System.out.println("이메일 인증 이메일 : " + email);
		return MailSendService.joinEmail(email);
	}

}
