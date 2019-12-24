package com.mylocal.myL.hotDeal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotDealController {
	
	@RequestMapping("hotDealMenu.do")
	public String hotDealMenu() {
		return "hotDeal/hotDealMain";
	}
	
	@RequestMapping("hotDealDetail.do")
	public String hotDealDetail() {
		return "hotDeal/hotDealDetail";
	}
	
	@RequestMapping("insertHotDeal.do")
	public String insertHotDeal() {
		return "hotDeal/insertHotDealForm";
	}
	
	@RequestMapping("hotDealQnA.do")
	public String hotDealQnA() {
		return "hotDeal/hotDealQnA";
	}
}
