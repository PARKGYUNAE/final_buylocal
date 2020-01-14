package com.mylocal.myL.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mylocal.myL.user.model.exception.UserException;
import com.mylocal.myL.user.model.service.UserService;
import com.mylocal.myL.user.model.vo.BusinessInfo;
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
	
	// 로그인 후 마이페이지 이동 처리  
	@RequestMapping("myProfile.do")
	public String myProfile() {
		return "user/myProfile";
		}
	
	// 마이페이지에서 정보수정 페이지 이동 처리
	@RequestMapping("myInfo.do")
	public String myInfo() {
		return "user/myInfo";
		}
	
	// 마이페이지에서 구매내역 페이지 이동 처리
	@RequestMapping("myOrderList.do")
	public String myOrderList() {
		return "user/myOrderList";
		}
	
	// 마이페이지에서 장바구니 페이지 이동 처리
		@RequestMapping("myCart.do")
		public String myCart() {
			return "user/myCart";
			}
	
	// 마이페이지에서 사업자 회원 거래내역 페이지 이동처리
	@RequestMapping("myBusiness.do")
	public String myBusiness() {
		return "user/myBusiness";
	}
	
	// 네비바에서 하트 누르면 찜 페이지 이동 처리
	@RequestMapping("myFavorite.do")
	public String myFavorite() {
		return "user/myFavorite";
		}
	
	// 
	
	
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
	
	
	// 아이디 중복확인
	@RequestMapping("dupid.do")
	public ModelAndView isDuplicateCheck(String cId, ModelAndView mv) {
		
		boolean isUsable = userService.checkIdDup(cId) == 0 ? true : false;
		
		Map map = new HashMap();
		map.put("isUsable", isUsable);
		mv.addAllObjects(map);
		mv.setViewName("jsonView");
		 
		return mv;
	}
	
	@RequestMapping("cupdate.do")
	public String updateCustomer(Customer c, Model model,
								@RequestParam("post") String post,
								@RequestParam("address1") String addr1,
								@RequestParam("address2") String addr2) {
		
		c.setcAddress(post+","+addr1+","+addr2);
		
		int result = userService.updateCustomer(c);
		
		if(result > 0) {
			model.addAttribute("msg", "회원 정보가 수정되었습니다.");
			model.addAttribute("loginUser", c);
			return "user/myProfile";
		} else {
			throw new UserException("회원 정보 수정 실패!");
		}
		
	}
	
	
	// 사업자 회원 가입
	@RequestMapping("binsert.do")
	public String insertBusinessInfo(Customer c, BusinessInfo bi,
									@RequestParam("post") String post,
									@RequestParam("address1") String addr1,
									@RequestParam("address2") String addr2,
									@RequestParam("bPost") String bPost,
									@RequestParam("bAddress1") String bAddr1,
									@RequestParam("bAddress2") String bAddr2,
									Model model) {
		
		
		c.setcPwd(bcryptPasswordEncoder.encode(c.getcPwd()));
		c.setcAddress(post+","+addr1+","+addr2);
		bi.setbShopAddress(bPost+","+bAddr1+","+bAddr2);
		
		System.out.println(c);
		System.out.println(bi);
		
		int result1 = userService.insertCustomer(c);
		
		if(result1 > 0) {
			
			int result2 = userService.insertBusinessInfo(bi);
			
			if(result2 > 0) {
				model.addAttribute("msg", "회원 가입이 완료되었습니다.");
				return "common/main";
			} else {
				throw new UserException("회원가입 실패!");
			}
		 
		} else {
			throw new UserException("회원가입 실패!");
		}
	
	}
	
	
	// 카카오 로그인 test
/*	@RequestMapping("kakaologin.do")
	public String kakaoLogin() {
		
		return "user/kakaoLogin";
	
	}
	*/
	
	
	
	
}	
		
	
	
	
