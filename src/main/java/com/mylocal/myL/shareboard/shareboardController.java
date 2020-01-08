package com.mylocal.myL.shareboard;

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
public class shareboardController {
	
	// 나눔게시판 메인
	@RequestMapping("shareboardMain.do")
	public String shareboardMain() {
		return "shareboardMain";
	}
	
	// 나눔게시판 디테일
	@RequestMapping("shareboardDetail.do")
	public String shareboardDetail() {
		return "shareboardDetail";
	}
}
