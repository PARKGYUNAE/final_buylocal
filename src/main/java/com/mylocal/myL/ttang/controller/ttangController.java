package com.mylocal.myL.ttang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ttangController {
	@RequestMapping("ttangDetail.do")
	public String ttangDetail() {
		return "ttang/ttangDetail";
	}
	@RequestMapping("ttangMain.do")
	public String ttangMain() {
		return "ttang/ttangMain";
	}
}
