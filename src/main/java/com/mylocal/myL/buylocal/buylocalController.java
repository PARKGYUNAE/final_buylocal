package com.mylocal.myL.buylocal;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class buylocalController {
	
	
	// 사이트 소개
	@RequestMapping("introduction.do")
	public String introduction() {
		return "buylocal/introduction";
	}
	
	// 홀리몰리
	@RequestMapping("holymoly.do")
	public String holymoly() {
		return "buylocal/holymoly";
	}
	
	
	// 공지사항 메인
	@RequestMapping("noticeMain.do")
	public String noticeMain() {
		return "buylocal/noticeMain";
	}
	
	// 공지사항 디테일
	@RequestMapping("noticeDetail.do")
	public String noticeDetail() {
		return "buylocal/noticeDetail";
	}
		
	
}
