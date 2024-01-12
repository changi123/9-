package com.shinhan.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shinhan.dto.MemVO;
import com.shinhan.dto.ProVO;
import com.shinhan.model.LoginService;
import com.shinhan.model.MenuService;

@Controller
@RequestMapping("login")
public class LoginController {

	@Autowired
	LoginService lservice;

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@GetMapping("loginForm.do")
	public String loginForm(Model model) {
		model.addAttribute("kakao_apikey", kakao_apikey);
		return "login/login";
		
	}

	@PostMapping("login.do")
	public String login(@RequestParam String mem_id, @RequestParam String mem_pw, 
			HttpSession session, Model model) {

		MemVO loginmem = lservice.login(mem_id, mem_pw);

		if (loginmem != null) {
			session.setAttribute("loginmem", loginmem);
			if(loginmem.getMem_id().equals("admin")) {
				return "redirect:/admin/adminMenu.do";
			} else {
			return "redirect:/"; // 로그인 성공 시 메인 페이지로 리다이렉트
			}
		} else {
			// 로그인 실패 시 처리
			model.addAttribute("loginErrorMessage", "아이디 또는 비밀번호가 잘못되었습니다.");
			return "login/login"; // 다시 로그인 페이지로
		}
	}

	@GetMapping("findIdForm.do")
	public String findIdForm() {
		return "login/findID";
	}

	@PostMapping("findId.do")
	public String findId(@RequestParam String mem_name, @RequestParam String mem_phone,
			@RequestParam String mem_bd, Model model) {

		MemVO foundid = lservice.findId(mem_name, mem_phone, mem_bd);

		if (foundid != null) {
			// 사용자를 찾았을 경우 처리 해당 아이디를 모델에 추가
			model.addAttribute("foundId", foundid.getMem_id());
			return "login/foundID"; // 아이디를 찾았을 때의 페이지로 이동
		} else {
			// 사용자를 찾지 못했을 경우 처리
			model.addAttribute("findUserErrorMessage", "입력한 정보와 일치하는 사용자를 찾을 수 없습니다.");
			return "login/findID"; // 다시 아이디 찾기 페이지로
		}
	}

	@GetMapping("findPwdForm.do")
	public String findPwdForm() {
		return "login/findPwd";
	}

	@PostMapping("findPwd.do")
	public String findPwd(@RequestParam String mem_id, @RequestParam String mem_name, @RequestParam String mem_phone,
			Model model, HttpSession session) {

		MemVO foundPwd = lservice.findPwd(mem_id, mem_name, mem_phone);

		if (foundPwd != null) {
			model.addAttribute("foundPwd", foundPwd);
			model.addAttribute("successMessage", "새로운 비밀번호를 설정하세요.");

			// 세션에 정보 저장
			session.setAttribute("updatePwdInfo",
					Map.of("mem_id", mem_id, "mem_name", mem_name, "mem_phone", mem_phone));

			return "login/createNewPwd"; // 새로운 비밀번호 설정 페이지로 이동
		} else {
			// 사용자를 찾지 못했을 경우 처리
			model.addAttribute("findUserErrorMessage", "입력한 정보와 일치하는 사용자를 찾을 수 없습니다.");
			return "login/findPwd"; // 다시 비밀번호 찾기 페이지로
		}
	}

	@PostMapping("updatePwd.do")
	public String updatePwd(@RequestParam String new_pw, HttpSession session, Model model) {
		// 세션에서 정보 가져오기
		Map<String, String> updatePwdInfo = (Map<String, String>) session.getAttribute("updatePwdInfo");
		if (updatePwdInfo != null) {
			// 비밀번호 업데이트 수행
			lservice.updatePwd(updatePwdInfo.get("mem_id"), new_pw);

			// 세션에서 정보 제거
			session.removeAttribute("updatePwdInfo");
			// System.out.println("비밀번호가 변경되었습니다. 다시 로그인해주세요.");

			model.addAttribute("updatePwdSuccessMessage", "비밀번호가 변경되었습니다. 다시 로그인해주세요.");

			return "login/login"; // 비밀번호 변경 후 로그인 페이지로 리다이렉트
		} else {
			// 세션에 필요한 정보가 없을 경우 처리
			return "login/createNewPwd";
		}
	}
	private String kakao_apikey = "5441b1f53765881e55f0aca5e80b8b62";
	
	//카카오로그인
	@RequestMapping(value="kakaoLoginPro.do", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> kakaoLoginPro(@RequestParam Map<String,Object> paramMap,HttpSession session, Model model) throws SQLException, Exception {
	    System.out.println("paramMap:" + paramMap);
	    Map <String, Object> resultMap = new HashMap<String, Object>();

	    MemVO kakaoConnectionCheck = lservice.kakaoConnectionCheck(paramMap);
	    
	    //일치하는 id 없으면 가입
	    if(kakaoConnectionCheck == null) {   
	    	model.addAttribute("registerData", kakaoConnectionCheck);
	        resultMap.put("JavaData", "register");
	        
	    }else {

	        MemVO kakaologin = lservice.userKakaoLoginPro(paramMap);
	        
	        //로그인 정보를 세션에 저장
	        session.setAttribute("loginmem", kakaologin);
	        resultMap.put("JavaData", "YES");
	        
	        //MemVO loginInfo = (MemVO) session.getAttribute("kakaologin");
	        //System.out.println(loginInfo);
	    }

	    return resultMap;
	}
	
	@RequestMapping(value="registerForm.do")
	public String setKakaoInfo(Model model,HttpSession session,@RequestParam Map<String,Object> paramMap) {
		System.out.println("setKakaoInfo");	
		System.out.println("param ==>"+paramMap);
		
		model.addAttribute("name",paramMap.get("name"));
		model.addAttribute("email",paramMap.get("email"));
		model.addAttribute("id",paramMap.get("id"));
		System.out.println("로그인 레지스터폼 .do");
		return "register/registerType";
	}
	
	
	
}