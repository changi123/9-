package com.shinhan.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.dto.ChallengeVO;
import com.shinhan.dto.ChalllikeVO;
import com.shinhan.dto.EventVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.ProVO;
import com.shinhan.model.ChallengeService;
import com.shinhan.model.EventService;

import lombok.Value;

@Controller
@RequestMapping("event")
public class EventController {
	@Autowired
	EventService eService;
	@Autowired
	ChallengeService chService;

	private static final Logger logger = LoggerFactory.getLogger(EventController.class);

	@GetMapping("freelunchbox.do") public String event1(Model model, ProVO pro) {
		List<ProVO> freelist = eService.selectFreeAll();
		model.addAttribute("freelist", freelist);
		return "event/freelunchbox";
	 }
	
	@GetMapping("makelunchbox.do")
	public String makelunchbox(Model model, HttpSession session, ChallengeVO challenge) {
		
		if (session.getAttribute("loginmem")==null) {
			return "redirect:/login/loginForm.do";
		}
		
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		List<ChallengeVO> clist = chService.selectByMakeAll();
		List<ChallengeVO> clisttop3 = chService.selectByMakeAllTop3();
		List<ChallengeVO> clistlike = chService.selectByMakeAlllike();
		List<ChalllikeVO> clistmylike = chService.selectByMakemylike(loginmem.getMem_id());
		model.addAttribute("clist", clist);
		model.addAttribute("clisttop3", clisttop3);
		model.addAttribute("clistlike", clistlike);
		model.addAttribute("loginmem", loginmem);
		model.addAttribute("clistmylike", clistmylike);
		System.out.println(clist);
		return "event/makelunchbox";
	}
	
	@GetMapping("lunchboxOrderby.do")
	public String lunchboxOrderby(Model model, ChallengeVO challenge) {
		if(challenge.getOrder_type().equals("최근 순")) {
			/* System.out.println(anno.getOrder_type()); */
			List<ChallengeVO> mlist = chService.selectOrderbyNew();
			List<ChallengeVO> clistlike = chService.selectByMakeAlllike();
			model.addAttribute("mlist", mlist);
			model.addAttribute("clistlike", clistlike);
		} 	else if(challenge.getOrder_type().equals("좋아요 순")) { 
			List<ChallengeVO> mlist = chService.selectOrderbyLike(); 
			List<ChallengeVO> clistlike = chService.selectByMakeAllOrderlike();
			model.addAttribute("mlist", mlist); 
			model.addAttribute("clistlike", clistlike);
		}
			 
		return "event/makelunchbox_search";
	}
	
	@GetMapping("lunchboxdetail.do")
	public String lunchboxdetail(Model model, ChallengeVO challenge, HttpSession session) {
		ChallengeVO chall = chService.selectByno(challenge.getChallenge_no());
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		int likeCnt = chService.getLike(challenge.getChallenge_no());
		ChalllikeVO challlike = new ChalllikeVO(loginmem.getMem_id(), challenge.getChallenge_no());
		int likeCheck = chService.getLikecheck(challlike);
		model.addAttribute("chall", chall);
		model.addAttribute("likeCnt", likeCnt);
		model.addAttribute("mem", loginmem);
		model.addAttribute("likeCheck", likeCheck);
		System.out.println(chall);
		System.out.println(loginmem);
		return "event/lunchboxdetail";
	}
	
//	@Value("#{application-API-KEY['kakao-admin-key']}")
	private String kakao_admin_key = "744b3913b823c75012d64f9856fdc141";
	
	@GetMapping("friendreco.do")
	public String friendreco(Model model) {
		List<EventVO> elist = eService.selectAll();
		model.addAttribute("elist", elist);
		model.addAttribute("kakao_admin_key", kakao_admin_key);
		return "event/friendreco";
	}
	
	@GetMapping("friendadd.do")
	public String friendadd(Model model) {
		List<EventVO> elist = eService.selectAll();
		model.addAttribute("elist", elist);
		return "event/friendadd";
	}
}
