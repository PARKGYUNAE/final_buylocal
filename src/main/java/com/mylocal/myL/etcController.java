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
	
	
	// 장바구니, 결제, 찜 페이지는 핫딜, 땡처리 게시판 모두 사용하는 페이지라서 여기로 옮겨둠. -> mypage로 추후 이동 예정
	// [view] - [mypage]에는 이미 옮겨둠!

	// 장바구니 - 경로 및 jsp파일명 수정
	@RequestMapping("buyForm.do")
	public String buyForm() {
		return "mypage/buyForm";
	}
	
	// 결제하기 - 경로 및 jsp파일명 수정
	@RequestMapping("checkOutForm.do")
	public String checkOutForm() {
		return "mypage/checkOutForm";
	}
	
	// 찜 목록 - 경로 및 jsp파일명 수정
	@RequestMapping("wishList.do")
	public String wishList() {
		return "mypage/wishList";
	}
	
}
