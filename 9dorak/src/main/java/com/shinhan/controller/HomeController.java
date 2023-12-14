package com.shinhan.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.shinhan.dto.ProVO;
import com.shinhan.model.MenuService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	MenuService menuService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		return "home";
	}

	@GetMapping("/main.do")
	public String allergy_menu(Model model) {
		List<ProVO> prolist = menuService.selectAll();
		List<ProVO> likelist = menuService.selectOrderbyLike();
		model.addAttribute("prolist", prolist);
		model.addAttribute("likelist", likelist);
		return "main";
	}

	@GetMapping("searchAllergyCheck.do")
	public String searchAllergyCheck(Model model, ProVO pro) {
		// @RequestParam("pro_aller") String pro_aller
		List<ProVO> slist = menuService.searchAllergyCheck(pro);
		/* System.out.println("searchAllergyCheck.do"); */
		model.addAttribute("slist", slist);
		return "main/main_allergy";
	}

	@GetMapping("searchCategoryCheck.do")
	public String searchCategoryCheck(Model model, ProVO pro) {
	List<ProVO> clist = menuService.searchCategoryCheck(pro.getIngre_no());
	System.out.println(clist);
	model.addAttribute("clist", clist);
	return "main/main_category";
	}

}
