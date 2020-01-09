package com.mylocal.myL.buylocal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mylocal.myL.buylocal.model.service.*;

public class noticeController {
	@Autowired
	private noticeService noticeService;

	@RequestMapping("noticeMain.do")
	public String noticeMain() {
		return "buylocal/noticeMain";
	}
	
	@RequestMapping("noticeDetail.do")
	public String noticeDetail() {
		return "buylocal/noticeDetail";
	}
	
}
