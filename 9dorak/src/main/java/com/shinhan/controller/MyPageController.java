package com.shinhan.controller;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.shinhan.dto.CouponVO;
import com.shinhan.dto.DeliveryHistoryVO;
import com.shinhan.dto.EarnpointVO;
import com.shinhan.dto.MemDeliveryVO;
import com.shinhan.dto.MemVO;
import com.shinhan.dto.PeopleVO;
import com.shinhan.dto.ProVO;
import com.shinhan.dto.ProimageVO;
import com.shinhan.model.MenuService;
import com.shinhan.model.MyPageService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("my")
public class MyPageController {

	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Autowired
	MyPageService mService;

	@GetMapping("myPage.do")
	public String myPage(Model model, HttpSession session) {

		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		MemVO mem = mService.getMember(loginmem.getMem_id());
		model.addAttribute("mem", mem);
		return "my/myPage";
	}

	@GetMapping("logout.do")
	public String logut(Model model, HttpSession session) {
		session.invalidate();
		return "main";
	}

	// 배송 내역 조회
	@GetMapping("myDeliveryList.do")
	public String myDeliveryList(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		if (loginmem == null) {
			return "login/login";
		}
		String memId = loginmem.getMem_id();
		List<DeliveryHistoryVO> dlist = mService.AllDeliveryHistory(memId);
		model.addAttribute("dlist", dlist);
		return "my/myDeliveryList";
	}

	@GetMapping("myLevel.do")
	public String myLevel() {
		return "my/myLevel";
	}

	@GetMapping("PayTest.do")
	public String PayTest() {
		return "my/payTest";
	}

	@GetMapping("myMenu.do")
	public String myMenu(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		MemVO mem = mService.getMember(loginmem.getMem_id());
		session.setAttribute("loginmem", mem);
		model.addAttribute("mem", mem);
		return "my/myMenu";
	}

	// 마이페이지 -주문/결제내역 페이지
	@GetMapping("orderDetails.do")
	public String orderDetails(Model model, HttpSession session) {
		return "my/orderDetails";
	}

	@GetMapping("orderList.do")
	public String orderList(Model model, HttpSession session, ProVO pro) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		List<Map<String, Object>> orderList = mService.orderList(loginmem.getMem_id());
		
		model.addAttribute("orderList", orderList);
		//System.out.println(orderList);
		return "my/myOrderList";
	}

	// 마이페이지 -결제내역 페이지
	@GetMapping("orderPayment.do")
	public String orderPayment(Model model, HttpSession session) {
		return "my/orderPayment";
	}

	@GetMapping("paymentList.do")
	public String paymentList(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		List<Map<String, Object>> paymentList = mService.paymentList(loginmem.getMem_id());
		model.addAttribute("paymentList", paymentList);

		System.out.println(paymentList);
		return "my/myPaymentList";
	}

	// 마이페이지 -결제취소내역 페이지
	@GetMapping("orderCancel.do")
	public String orderCancel(Model model, HttpSession session) {
		return "my/orderCancel";
	}

	@GetMapping("cancelList.do")
	public String cancelList(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		List<Map<String, Object>> cancelList = mService.cancelList(loginmem.getMem_id());
		model.addAttribute("cancelList", cancelList);
		return "my/myCancelList";
	}

	// 가족등록
	@RequestMapping(value = "/insertPeople.do", produces = "text/plain;charset=utf-8")
	public @ResponseBody String insertPeople(String mem_code, String category, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");

		try {
			Map<String, String> mapData = new HashMap<>();
			mapData.put("mem_id", loginmem.getMem_id());
			mapData.put("mem_code", mem_code);
			mapData.put("people_category", category);
			int result = mService.insertPeople(mapData);

			if (result > 0) {
				return "등록되었습니다.";
			} else {
				throw new Exception("등록에 실패했습니다. 이미 등록된 코드인지 확인하세요.");
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "등록에 실패했습니다. 이미 등록된 코드인지 확인하세요.";
		}
	}

	// 가족목록
	@RequestMapping("familyList.do")
	public String familyList(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		if (loginmem != null) {
			String mem_id = loginmem.getMem_id();
			List<Map<String, Object>> familyList = mService.selectFamilyList(mem_id);
			model.addAttribute("familyList", familyList);
			return "my/familyList";
		} else {
			// 로그인하지 않은 사용자 처리
			return "login/login";
		}
	}
	
	

	// 가족목록삭제
	@PostMapping(value = "deleteFamilyMembers" )
	public String deleteFamilyMembers(@RequestParam("selectedIds[]") String[] selectedIds,Model model, HttpSession session) {
		System.out.println(Arrays.toString(selectedIds));
		 
		mService.deleteFamilyMember(selectedIds);
		
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");		 
		String mem_id = loginmem.getMem_id();
		List<Map<String, Object>> familyList = mService.selectFamilyList(mem_id);
		model.addAttribute("familyList", familyList);
		return "my/familyList_ajax";
	}

	@RequestMapping(value = "updateMember.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String updateMember(Model model, HttpSession session, MemVO mem) {

		int result = mService.updateMember(mem);
		if (result > 0) {
			MemVO loginmem = mService.getMember(mem.getMem_id());
			session.setAttribute("loginmem", loginmem);
			model.addAttribute("mem", loginmem);
			return "수정 성공";
		} else {
			return "수정 실패";

		}

	}

	@GetMapping("deleteMember.do")
	public String deleteMember(Model model, HttpSession session, MemVO mem) {
		int result = mService.deleteMember(mem.getMem_id());
		if (result > 0) {
			session.invalidate();
		}
		return "home";
	}

	@GetMapping("myDelivery.do")
	public String myDelivery(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		MemVO mem = mService.getMember(loginmem.getMem_id());
		List<MemDeliveryVO> dlist = mService.getDelivery(loginmem.getMem_id());
		model.addAttribute("mem", mem);
		model.addAttribute("dlist", dlist);

		return "my/myDelivery_ajax";
	}

	// 팝업으로 띄우기
	@GetMapping("selectDelivery.do")
	public String selectDelivery(Model model, HttpSession session) {

		return "my/selectDelivery";
	}

	@PostMapping("deleteDelivery.do")
	public String deleteDelivery(Model model, HttpSession session, MemDeliveryVO memdel) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		memdel.setMem_id(loginmem.getMem_id());
		int result = mService.deleteDelivery(memdel);
		MemVO mem = mService.getMember(loginmem.getMem_id());
		List<MemDeliveryVO> dlist = mService.getDelivery(loginmem.getMem_id());
		model.addAttribute("mem", mem);
		model.addAttribute("dlist", dlist);
		return "my/myDelivery_ajax";
	}

	@RequestMapping(value = "insertDelivery.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String insertDelivery(Model model, HttpSession session, MemDeliveryVO memDel) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		memDel.setMem_id(loginmem.getMem_id());
		int count = mService.selectDelivery(memDel);
		if (count > 0) {
			return "false";
		}
		int result = mService.insertDelivery(memDel);
//		System.out.println(result);
		return "my/myDelivery_ajax";
	}

	//

	@GetMapping("pointAndCoupon.do")
	public String pointAndCouponPage(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		String mem_id = loginmem.getMem_id();
		List<ProVO> likeList = mService.getLikeList(mem_id);
		// 나중에는 로그인한 사람 아이디로 바꾸자
		model.addAttribute("loginmem", loginmem);
		model.addAttribute("likeList", likeList);
		System.out.println("Asd");
		return "my/pointAndCoupon";
	}

	@GetMapping("coupon_ajax.do")
	public String couponPage(Model model, HttpSession session) {
//		System.out.println("coupon_ajax.do");
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		String mem_id = loginmem.getMem_id();
		List<CouponVO> clist = mService.getCoupon(mem_id);
		List<CouponVO> clist2 = mService.getCoupon2(mem_id);
		model.addAttribute("loginmem", loginmem);
		model.addAttribute("clist", clist);
		model.addAttribute("clist2", clist2);
		
		return "my/coupon_ajax";
	}

	@RequestMapping(value = "couponReg.do", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String couponPage(Model model, HttpSession session, CouponVO coupon) {
//		System.out.println(coupon);
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		model.addAttribute("loginmem", loginmem);
		int check = mService.couponCheck(coupon);
		if (check == 1) {
			int result = mService.couponRegUpdate(coupon);
			return "쿠폰 등록 성공";
		} else {
			return "이미 등록되거나 잘못된 코드 입니다.";
		}
	}

	@GetMapping("point_ajax.do")
	public String pointPage(Model model, HttpSession session) {
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		List<EarnpointVO> elist = mService.getPointList(loginmem.getMem_id());
		model.addAttribute("loginmem", loginmem);
		model.addAttribute("elist", elist);
//		System.out.println(elist);
		return "my/point_ajax";
	}

	@PostMapping("profileUplode.do")
	public String profileUplode(Model model, HttpSession session, MultipartFile singleFile,
			HttpServletRequest request) {
		String path = request.getSession().getServletContext().getRealPath("resources");
		String root = path + "\\upload";

		File file = new File(root);

		if (!file.exists())
			file.mkdirs();

		String originFileName = singleFile.getOriginalFilename();
		String ext = "";
		int lastIndex = originFileName.lastIndexOf(".");
		if (lastIndex != -1) { 
			ext = originFileName.substring(lastIndex);
		}

		String ranFileName = UUID.randomUUID().toString() + ext; 
		File changeFile = new File(root + "\\" + ranFileName);
		try {
			singleFile.transferTo(changeFile);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		MemVO memVO = (MemVO) session.getAttribute("loginmem");
		memVO.setMem_image(ranFileName);
		int result = mService.profileUpdate(memVO);
		int updateResult = mService.updateDoranProfile(memVO);
		return "redirect:/my/myMenu.do";
	}

	@PostMapping("profileDelete.do")
	public String profileDelete(Model model, HttpSession session, HttpServletRequest request) {
		MemVO memVO = (MemVO) session.getAttribute("loginmem");
		int result = mService.profileDelete(memVO);
		memVO.setMem_image("resources/images/my/baseProfile.png");
		int updateResult = mService.updateDoranProfile(memVO);
		return "redirect:/my/myMenu.do";
	}

	@GetMapping("familyReg.do")
	public String familyReg(Model model, HttpSession session) {
		if (session.getAttribute("loginmem")==null) {
			return "redirect:/login/loginForm.do";
		}
		MemVO loginmem = (MemVO) session.getAttribute("loginmem");
		model.addAttribute("mem", loginmem);

		return "my/familyReg";
	}

}
