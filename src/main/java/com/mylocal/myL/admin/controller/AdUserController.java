package com.mylocal.myL.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylocal.myL.admin.model.service.AdUserService;
import com.mylocal.myL.admin.model.vo.Customer;
import com.mylocal.myL.admin.model.vo.Seller;


@Controller
public class AdUserController {
	@Autowired
	AdUserService adUserService;
	
	// 회원 관리 메뉴(수정 완료)
		@RequestMapping("user.do")
		public String UserMenu() {
			return "admin/user";
		}
		
		// 일반 회원 메뉴(수정완료)
		@RequestMapping("normalUser.do")
		public String NormalUserMenu() {
			return "admin/normalUser";
		}
		
		// 일반 회원 정보	
		@RequestMapping("normalUserInfo.do")
		public ModelAndView NormalUserInfo(ModelAndView mv) {
			ArrayList<Customer> list = adUserService.NormalUserInfoList();
			mv.setViewName("admin/normalUserInfo");
			
			
		return mv;
		}
		
		
		
		// 일반 회원 구매정보	
		@RequestMapping("adNormalUserBuy.do")
		public ModelAndView adNormalUserBuy(ModelAndView mv) {
			ArrayList<Customer> list = adUserService.NormalUserBuyList();
			mv.setViewName("admin/normalUserBuy");
			
			
		return mv;
		}
		
		// 일반 회원 블랙 처리 해결(업데이트) status를 취소시켜주는것 'Y'로 변경해주자
		@RequestMapping("normalUserReport")
		public ModelAndView adNormalUserReport(ModelAndView mv, Customer cu) {
			
			int result = adUserService.UpdateNormalUser(cu);
			
			return mv;
		}
		
		
		
		// 사업자 회원 메뉴(수정완료)
		@RequestMapping("businessUser.do")
		public String BusinessUserMenu() {
			return "admin/businessUser";
		}
		
			// 사업자 정보 리스트들 보기
			@RequestMapping("businessUserInfo.do")
			public ModelAndView BusinessUserInfo(ModelAndView mv) {
				ArrayList<Seller> list = adUserService.BusinessUserInfoSelectList();
				mv.setViewName("admin/businessUserInfo");
				
				
			return mv;
			}
			
			// 사업자 정보 상세보기(통계로 보는용 거래량등)
			@RequestMapping("businessUserInfoDetail.do")
			public ModelAndView businessUserInfoDetail(ModelAndView mv, int sNo,
						@RequestParam("page") Integer page){
				
				Customer customer = adUserService.selectCustomer(sNo);
				
				return mv;
			
			}
			
			// 사업자 등급 관리 리스트
			@RequestMapping("businessUserGrade.do")
			public ModelAndView BusinessUserGrade(ModelAndView mv) {
				ArrayList<Seller> list = adUserService.BusinessUserGradeSelectList();
				
				mv.setViewName("admin/businessUserGrade");
				
				
			return mv;
			
			}
			
			// 사업자 번호관련 상세보기(등급관리를 위해 보는용도)
			@RequestMapping("businessUserShopNo.do")
			public ModelAndView BusinessUserDetail(ModelAndView mv, int sNo,
						@RequestParam("page") Integer page){
				
				Customer customer = adUserService.selectCustomer(sNo); // 같은거 써도 상관없을듯 셀렉만 다른거니
				
				return mv;
			
			}
			
			// 사업자 등급 변경
			@RequestMapping("businessUserGradeUpdate.do")
			public ModelAndView BusinessUserGradeUpdate(ModelAndView mv, Seller s) {
				
				int result = adUserService.updateBusiness(s);
				
			 mv.setViewName("admin/businessUserGrade");
			 
			 return mv;
			}
			
			// 사업자 블랙 취소 (업데이트)
			@RequestMapping("businessUserReport.do")
			public ModelAndView BusinessUserReport(ModelAndView mv, Seller s) {
				
				int result = adUserService.updateBusinessReport(s);
				
			 mv.setViewName("admin/businessUserGrade");
			 
			 return mv;
			}
			
			
			
	
	
}
