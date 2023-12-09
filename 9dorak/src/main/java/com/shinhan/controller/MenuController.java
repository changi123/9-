package com.shinhan.controller;


import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.type.filter.AbstractClassTestingTypeFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shinhan.dto.MemreviewVO;
import com.shinhan.dto.ProVO;
import com.shinhan.model.MenuService;


@Controller
@RequestMapping("menu")
public class MenuController {

	@Autowired
	MenuService mService;

	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);

	//메뉴보기
	@GetMapping("menu.do")
	public String menu(Model model) {
		List<ProVO> plist = mService.selectAll();
		model.addAttribute("mlist", plist);
		return "menu/menu";
	}
	
	// 리뷰 사진 및 동영상 모아보기
	@GetMapping("menuMediaReview.do")
	public String menuMediaReview(Model model) {
		return "menu/menuMediaReviews";
	}
	
	//카테고리+검색
	@GetMapping("searchPro.do")
	//@ResponseBody
	public String searchPro(Model model,@RequestParam Map<String, Object> map) throws JsonMappingException, JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		ProVO pro = new ProVO();
		
		//System.out.println("검색어 :"+(String)map.get("pro_name"));
		//System.out.println("카테고리 :"+(String)map.get("ingre_no"));
		pro.setPro_name((String)map.get("pro_name"));
		pro.setIngre_no((String)map.get("ingre_no"));
		
		List<ProVO> slist = mService.selectSearchPro(pro);
		model.addAttribute("slist", slist);
		//System.out.println("최종 조회리스트 :"+slist.toString());
		
		return "menu/menu_ajax";
	}
	
	//정렬
	@GetMapping("searchOrderby.do")
	public String searchOrderby(Model model, ProVO pro) {
		System.out.println(pro.getOrder_type());
		//System.out.println(pro.getPro_aller());
		System.out.println(pro.getIngre_no());
		//@RequestParam("order_type") String order_type
		
		//카테고리 + 정렬
		if(pro.getIngre_no() != "" && pro.getOrder_type() != "") {
			List<ProVO> slist = mService.selectCtgrOrder(pro);
			model.addAttribute("slist", slist);
			//System.out.println(slist);
			//System.out.println(pro.getIngre_no());
			//System.out.println(pro.getOrder_type());
			return "menu/menu_ajax";
		}
		
		//알러지 + 정렬
		if(pro.getPro_aller() != null && pro.getOrder_type() != null) {
			List<ProVO> slist = mService.selectAllOrder(pro);
			model.addAttribute("slist", slist);
			//System.out.println(slist);
			return "menu/menu_ajax";
		}
		
		if(pro.getOrder_type().equals("신상품 순")) {
			List<ProVO> slist = mService.selectOrderbyNew();
			model.addAttribute("slist", slist);
			//System.out.println(slist);
		}else if(pro.getOrder_type().equals("인기순")) {
			List<ProVO> slist = mService.selectOrderbyLike();
			model.addAttribute("slist", slist);
		}
		
		return "menu/menu_ajax";
	}
	
	@GetMapping("searchAllergyCheck.do")
	public String searchAllergyCheck(Model model, ProVO pro) {
		//System.out.println(pro_aller);
		//@RequestParam("pro_aller") String pro_aller
		List<ProVO> slist = mService.searchAllergyCheck(pro.getPro_aller());
		model.addAttribute("slist", slist);
		
		return "menu/menu_ajax";
	}
	
	@GetMapping("menuSpecificReview.do")
	public String menuSpecificReview(Model model, ProVO pro) {
		//System.out.println(mService.selectByNo(pro.getPro_no()));
		//System.out.println("menuSpecificReview:" + pro.getPro_no());
		
		List<Map<String, Object>> rlist = mService.selectProReview(pro.getPro_no());
		model.addAttribute("rlist", rlist);
		
		Map<String, Object> revwCnt = mService.reviewCnt(pro.getPro_no());
		model.addAttribute("totCnt",revwCnt.get("totCnt"));
		model.addAttribute("phtCnt",revwCnt.get("phtCnt"));
		model.addAttribute("txtCnt",revwCnt.get("txtCnt"));
		
		model.addAttribute("menudetail", mService.selectByNo(pro.getPro_no()));
			 	
		return "menu/menuSpecificReview";
	}
	
}
