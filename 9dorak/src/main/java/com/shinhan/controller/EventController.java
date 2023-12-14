package com.shinhan.controller;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.shinhan.dto.EventVO;
import com.shinhan.dto.ProVO;
import com.shinhan.model.EventService;

@Controller
@RequestMapping("event")
public class EventController {
	@Autowired
	EventService eService;

	private static final Logger logger = LoggerFactory.getLogger(EventController.class);

	@GetMapping("freelunchbox.do") public String event1(Model model, ProVO pro) {
		List<ProVO> freelist = eService.selectFreeAll();
		model.addAttribute("freelist", freelist);
		return "event/freelunchbox";
	 }
	
	@GetMapping("makelunchbox.do")
	public String event2(Model model) {
		List<EventVO> elist = eService.selectAll();
		model.addAttribute("elist", elist);
		return "event/makelunchbox";
	}
	
	@GetMapping("friendreco.do")
	public String friendreco(Model model) {
		List<EventVO> elist = eService.selectAll();
		model.addAttribute("elist", elist);
		return "event/friendreco";
	}
	
	@GetMapping("friendadd.do")
	public String friendadd(Model model) {
		List<EventVO> elist = eService.selectAll();
		model.addAttribute("elist", elist);
		return "event/friendadd";
	}
}
