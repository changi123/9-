package com.shinhan.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.shinhan.dto.ChallengeVO;
import com.shinhan.dto.ChalllikeVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.PagingVO;
import com.shinhan.model.ChallengeService;

@Controller
@RequestMapping("event")
public class ChallengeController {
	@Autowired
	ChallengeService chService;

	private static final Logger logger = LoggerFactory.getLogger(ChallengeController.class);

	@GetMapping("challenge.do")
	public String challenge(Model model, @ModelAttribute("ChallengeVO") ChallengeVO ChallengeVO,
			@RequestParam(defaultValue = "1") int currentPage) {

		int totalCount = chService.selectBoardListCnt(ChallengeVO); // 전체게시물수
		System.out.println("challenge.do");
		PagingVO pagingVO = new PagingVO(totalCount, currentPage);

		ChallengeVO.setStartIndex(pagingVO.getStartIndex()); // 뭔지 모름..
		ChallengeVO.setCntPerPage(pagingVO.getDisplayRow()); // 한페이지에 게시물 수
		ChallengeVO.setCurrentPage(pagingVO.getCurrentPage()); // 현재페이지

		List<Map<String, Object>> chlist = chService.list(ChallengeVO); // 전체목록조회

		model.addAttribute("chlist", chlist);
		System.out.println(chlist);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pagingVO", pagingVO);
		return "event/challenge";
	}

	@GetMapping("challengeDetail.do")
	public String challenge2(Model model, ChallengeVO challenge, HttpSession session) {
		ChallengeVO chall = chService.selectByno(challenge.getChallenge_no());
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		int likeCnt = chService.getLike(challenge.getChallenge_no());
		ChalllikeVO challlike = new ChalllikeVO(loginmem.getMem_id(), challenge.getChallenge_no());
		int likeCheck = chService.getLikecheck(challlike);
		System.out.println(likeCheck);
		model.addAttribute("chall", chall);
		model.addAttribute("likeCnt", likeCnt);
		model.addAttribute("mem", loginmem);
		model.addAttribute("likeCheck", likeCheck);
		System.out.println(loginmem);
		return "event/challengeDetail";
	}

	@RequestMapping(value = "challengeUpdate.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String challengeUpdate(Model model, ChallengeVO challenge) {
//		System.out.println(challenge);
		int result = chService.updateChall(challenge);
//		System.out.println("challengeupdate.do");
		if (result > 0) {
			return "수정 성공";
		} else {
			return "수정 실패";
		}
	}

	@GetMapping("insertChal.do")
	public String insertChalPage(Model model) {
//		System.out.println("insertChalPage");
		return "event/challengeInsert";
	}

	@PostMapping("insertChal.do")
	public String insertChal(Model model, ChallengeVO challenge, @RequestParam MultipartFile singleFile,
			HttpServletRequest request) {
//		System.out.println("insertChalpost");
		String mem_id = "aaa";
		// 나중에 이거 세션에 값 가져와서 넣자
		challenge.setMem_id(mem_id);
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

		challenge.setChallenge_image(ranFileName);
		int result = chService.insertChal(challenge);
		List<ChallengeVO> chlist = chService.selectAll();
		model.addAttribute("chlist", chlist);
		return "redirect:/event/challenge.do";
	}

	@RequestMapping(value = "challengeDelete.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String challengeDelete(Model model, ChallengeVO challenge) {
		int result = chService.deleteChal(challenge.getChallenge_no());
		if (result > 0) {
			return "삭제 성공";
		} else {
			return "삭제 실패";
		}

	}
	
	@RequestMapping(value = "challengelikeUpdate.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String challengelikeUpdate(Model model, HttpSession session, ChalllikeVO challenge, @RequestParam("check") String check){
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		ChalllikeVO challlike = new ChalllikeVO(loginmem.getMem_id(), challenge.getChallenge_no());
		if (check.equals("1")) {
			int result = chService.delelelikeChall(challlike);
			if (result > 0) {
				return "좋아요 취소";
			}
		}
		else {
			int result = chService.insertlikeChall(challlike);
			if (result > 0) {
				return "좋아요 성공";
			}
		}
		return null;
	}
	
	// challengeLunchBox test
	@GetMapping("challengeLunchBox.do")
	public String challengeLunchBox(Model model) {
		List<ChallengeVO> clist = chService.selectAll();
		model.addAttribute("clist", clist);
		return "event/challengeLunchBox";
	}

}
