package com.mylocal.myL.shop.ttang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ttangController {
	
	
	// [메인] 
	@RequestMapping("ttangMain.do")
	public String ttangMain() {
		return "ttang/ttangMain";
	}
	
	// 땡처리 디테일
	@RequestMapping("ttangDetail.do")
	public String ttangDetail() {
		return "ttang/ttangDetail";
	}
	
	

}
