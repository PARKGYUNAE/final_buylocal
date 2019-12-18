package com.mylocal.myL.hotDeal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotDealController {
	
	@RequestMapping("hotDealMenu.do")
	public String hotDealMenu() {
		return "hotDeal/hotDealMain";
	}
	
}
