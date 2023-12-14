package com.shinhan.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shinhan.dto.AnnoVO;
import com.shinhan.dto.FaqVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.OneaskVO;
import com.shinhan.model.MailSendOneAskService;
import com.shinhan.model.MailSendService;
import com.shinhan.model.MyPageService;
import com.shinhan.model.YomoService;

@Controller
@RequestMapping("yomo")
public class YomoController {
	
	@Autowired
	YomoService yservice;
	@Autowired
	MyPageService mService;
	@Autowired
	MailSendOneAskService MailSendOneAskService;
	

	private static final Logger logger = LoggerFactory.getLogger(YomoController.class);
	
	@GetMapping("notice.do")
	public String notice(Model model) {
		List<AnnoVO> ylist = yservice.selectAll();
		model.addAttribute("annolist", ylist);
		return "yomo/notice";
	}
	
	@GetMapping("noticeDetail.do")
	public String notice(Model model, AnnoVO anno) {
		AnnoVO annovo = yservice.selectByno(anno.getAnno_no());
		model.addAttribute("anno", annovo);
		return "yomo/noticeDetail";
	}
	
	@GetMapping("searchYomo.do")
	public String searchYomo(Model model, AnnoVO anno) {
		// @RequestParam("pro_aller") String pro_aller
		List<AnnoVO> ylist = yservice.searchYomo(anno.getAnno_title());
		/* System.out.println("searchAllergyCheck.do"); */
		model.addAttribute("ylist", ylist);
		return "yomo/notice_search";
	}
	
	@GetMapping("yomoOrderby.do")
	public String yomoOrderby(Model model, AnnoVO anno) {
		if(anno.getOrder_type().equals("조회수 순")) {
			/* System.out.println(anno.getOrder_type()); */
			List<AnnoVO> ylist = yservice.selectOrderbyView();
			model.addAttribute("ylist", ylist);
			//System.out.println(slist);
		}else if(anno.getOrder_type().equals("최근글 순")) {
			List<AnnoVO> ylist = yservice.selectOrderbyNew();
			model.addAttribute("ylist", ylist);
		}
		return "yomo/notice_search";
	}
	
	@GetMapping("faq.do")
	public String faq(Model model) {
		List<FaqVO> flist = yservice.selectFaqAll();
		model.addAttribute("flist", flist);
		return "yomo/faq";
	}
	
	@GetMapping("oneaskDetail.do")
	public String oneask(Model model, OneaskVO oneask, HttpSession session) {
		OneaskVO oneaskvo = yservice.selectBynoOneask(oneask.getOneask_no());
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
//		MemVO mem = mService.getMember(loginmem.getMem_id());
		model.addAttribute("oneask", oneaskvo);
		model.addAttribute("mem", loginmem);
//		System.out.println(oneaskvo);
//		System.out.println(loginmem);
		return "yomo/oneaskDetail";
	}
	
	@GetMapping("oneask.do")
	public String oneask(Model model, OneaskVO oneask) {
		List<OneaskVO> olist = yservice.selectOneaskAll();
		int result = yservice.updateOneask(oneask);
		

		
		
		///////////////////////// 이메일 쏴주자
		MemVO mem = mService.getMember(oneask.getMem_id());
		if( mem != null) {
			String s = MailSendOneAskService.joinEmail(mem.getMem_email(),oneask.getOneask_title());		
		}

		model.addAttribute("olist", olist);
		/* System.out.println(oneask); */
		return "yomo/oneask";
	}
	
	@GetMapping("searchOneask.do")
	public String searchOneask(Model model, OneaskVO oneask) {
		// @RequestParam("pro_aller") String pro_aller
		List<OneaskVO> olist = yservice.searchOneask(oneask.getOneask_title());
		model.addAttribute("olist", olist);
		return "yomo/oneask_search";
	}
	
	@GetMapping("oneaskOrderby.do")
	public String yomoOrderby(Model model, OneaskVO oneask) {
		if(oneask.getOrder_type().equals("최근글 순")) {
			List<OneaskVO> olist = yservice.selectOrderbyNewOneask();
			model.addAttribute("olist", olist);
			//System.out.println(olist);
		}
		return "yomo/oneask_search";
	}
	
	@GetMapping("insertOneask.do")
	public String insertOneaskPage(Model model) {
		return "yomo/oneaskInsert";
	}
	
	@PostMapping("insertOneask.do")
	public String insertOneask(Model model, OneaskVO oneask, 
			@RequestParam MultipartFile singleFile, HttpServletRequest request) {
		String mem_id = "aaa";
		// 나중에 이거 세션에 값 가져와서 넣자
		oneask.setMem_id(mem_id);


		//// 파일업로드
		// 2. 저장할 경로 가져오기
		String path = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("path : " + path);
//		String root = path + "\\uploadFiles" ;
		String root = path + "\\upload";

		File file = new File(root);

		// 만약 uploadFiles 폴더가 없으면 생성해라 라는뜻
		if (!file.exists())
			file.mkdirs();

		// 업로드할 폴더 설정
		String originFileName = singleFile.getOriginalFilename();
//		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String ext = "";
		int lastIndex = originFileName.lastIndexOf(".");
		if (lastIndex != -1) {
		    ext = originFileName.substring(lastIndex);
		}

		// ext를 이용한 나머지 로직 수행

		String ranFileName = UUID.randomUUID().toString() + ext;

		File changeFile = new File(root + "\\" + ranFileName);

		
		// 파일업로드
		try {
			singleFile.transferTo(changeFile);
			System.out.println("파일 업로드 성공");
		} catch (IllegalStateException | IOException e) {
			System.out.println("파일 업로드 실패");
			e.printStackTrace();
		}

		oneask.setOneask_image(ranFileName);
		int result = yservice.insertOneask(oneask);
		List<OneaskVO> olist = yservice.selectOneaskAll();
		model.addAttribute("olist", olist);
		return "redirect:/yomo/oneask.do";
	}
	
	@GetMapping("aboutus.do")
	public String aboutus() {
		return "yomo/aboutus";
	}
}