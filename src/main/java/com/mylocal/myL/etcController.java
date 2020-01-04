package com.mylocal.myL;

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
public class etcController {
	
	// 고객센터
	@RequestMapping("contactUs.do")
	public String contactUs() {
		return "contactUs";
	}
	
	// 이벤트&광고
	@RequestMapping("advertisement.do")
	public String advertisement() {
		return "advertisement";
	}
}
