package com.shinhan.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shinhan.dto.ProVO;
import com.shinhan.model.MenuService;
import com.shinhan.model.SubService;

@Controller
@RequestMapping("sub")
public class SubController {
	
	@Autowired
	SubService subService;
	@Autowired
	MenuService mService;

	private static final Logger logger = LoggerFactory.getLogger(SubController.class);

	/*@GetMapping("sub.do")
	public String sub(Model model) {
		List<SubVO> sublist = subService.selectAll();
		model.addAttribute("sublist", sublist);
		return "sub/sub";
	} */
	
	@GetMapping("sub.do")
	public String sub() {
		return "sub/sub";
	}
	
	@GetMapping("subdetail_9sub.do")
	public String subdetail_9sub(Model model, ProVO pro) {
		List<ProVO> sub9allist = subService.selectAllSub9A();
		List<ProVO> sub9bllist = subService.selectAllSub9B();
		model.addAttribute("sub9allist", sub9allist);
		model.addAttribute("sub9bllist", sub9bllist);
		System.out.println(sub9allist);
		System.out.println(sub9bllist);
		return "sub/subdetail_9sub";
	}
	
	@GetMapping("subdetail_19sub_a.do")
	public String subdetail_19asub(Model model, ProVO pro) {
		List<ProVO> sub19allist = subService.selectAllSub19A();
		model.addAttribute("sub19allist", sub19allist);
		System.out.println(sub19allist);
		return "sub/subdetail_19sub_a";
	}


	@GetMapping("subdetail_19sub_b.do")
	public String subdetail_19bsub(Model model, ProVO pro) {
		List<ProVO> sub19bllist = subService.selectAllSub19B();
		model.addAttribute("sub19bllist", sub19bllist);
		System.out.println(sub19bllist);
		return "sub/subdetail_19sub_b";
	}

}
