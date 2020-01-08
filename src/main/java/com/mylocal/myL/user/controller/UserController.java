package com.mylocal.myL.user.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.mylocal.myL.user.model.exception.UserException;
import com.mylocal.myL.user.model.service.UserService;
import com.mylocal.myL.user.model.vo.Customer;

@SessionAttributes("loginUser")
@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	private Logger logger = LoggerFactory.getLogger(UserController.class);
	
	// 비밀번호 암호화 처리를 위한 encoder를 필드에 선언해 줌
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 로그인 페이지 이동 처리
	@RequestMapping("userLogin.do")
	public String userLogin() {
		return "user/userLogin";
		}
	
	// 회원가입 전 회원 구분 페이지 이동 처리
	@RequestMapping("userType.do")
	public String userType() {
		return "user/userType";
		}
	
	// 일반 회원용 가입 폼 페이지 이동 처리 
	@RequestMapping("userSignUp.do")
	public String userSignUp() {
		return "user/userSignUp";
		}
	
	// 사업자 회원용 가입 폼 페이지 이동 처리 
	@RequestMapping("sellerSignUp.do")
	public String sellerSignUp() {
		return "user/sellerSignUp";
		}
	
	
	// 일반 회원 가입 폼 작성 후 요청 처리 컨트롤러
	@RequestMapping("cinsert.do")
	public String insertCustomer(Customer c,
								@RequestParam("post") String post,
								@RequestParam("address1") String address1,
								@RequestParam("address2") String address2,
								Model model) {
//		System.out.println(c);
//		String encPwd = bcryptPasswordEncoder.encode(c.getcPwd());
		c.setcPwd(bcryptPasswordEncoder.encode(c.getcPwd())); // setter를 통해 암호화 된 비밀번호로 변경 처리
		c.setcAddress(post + "," + address1 + ", " + address2); // 주소 문자열로 처리 
		System.out.println(c);
		
		int result = userService.insertCustomer(c);
		
		if(result > 0) {
			model.addAttribute("msg", "회원 가입이 완료되었습니다.");
			return "common/main";
		} else {
			throw new UserException("회원가입 실패!");
		}
		
		
		 
	}
	
	// 암호화 처리 후 로그인 (일반 회원)
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginCustomer(Customer c, Model model) {
		
		Customer loginUser = userService.loginCustomer(c);
		
		if(loginUser != null && bcryptPasswordEncoder.matches(c.getcPwd(), loginUser.getcPwd())) {
			model.addAttribute("loginUser", loginUser);
			return "common/main";
		} else {
			throw new UserException("로그인 실패");
		}
		
	}
	
	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {
		
		status.setComplete();
		return "common/main";
	}
	
	
	// 로그인 후 마이페이지 이동 컨트롤러
	@RequestMapping("myProfile.do")
	public String myProfile() {
		return "user/myProfile";	
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
