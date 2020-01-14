package com.mylocal.myL.shop.ttang.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylocal.myL.common.Pagination;
import com.mylocal.myL.shop.ttang.model.vo.Product;
import com.mylocal.myL.shop.ttang.model.service.*;

@Controller
public class ttangController {
	
	@Autowired
	private ttangService ttangService;
	
	
	@RequestMapping("ttangMain.do")
	public String ttangMain(Model model, 
			@RequestParam(value="page", required=false) Integer page) {
		int currentPage = page!= null ? page : 1;
		ArrayList<Product> list = ttangService.selectList(currentPage);
		model.addAttribute("list", list);
		model.addAttribute("pi", Pagination.getPageInfo());
		return "ttang/ttangMain";
	}
	
	
	// 땡처리 디테일
	/*@RequestMapping("ttangDetail.do")
	public String ttangDetail() {
		return "ttang/ttangDetail";
	}*/
	
	@RequestMapping("ttangDetail.do")
	public ModelAndView ttangDetail(ModelAndView mv, int pNo, 
			@RequestParam(value="page", required=false) Integer page,
			@RequestParam(value="divide", required=false) String str,
			HttpServletRequest request,
			HttpServletResponse response) {
		
		int currentPage = page != null ? page : 1;
		
		System.out.println("str="+str);
		Product product = null;
		
		boolean flag = false;
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				if(c.getName().equals("pNo" + pNo)) {
					flag = true; // 해당게시글에 대한 쿠키 존재(이미 읽은 게시물)
				}
			}
		}
		
		if(!flag) {
			Cookie c = new Cookie("pNo" + pNo, String.valueOf(pNo));
			c.setMaxAge(1 * 24 * 60 * 60); // 하루동안 쿠키 저장
			response.addCookie(c);
		}
		product = ttangService.selectBoard(pNo, flag);
		
		if(str == null) {
			mv.addObject("ttangDetail", product).addObject("currentPage", currentPage);
			mv.setViewName("ttang/ttangDetail");
		} else {
			Map<String, Object> map = new HashMap<String, Object>();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String date = sdf.format(product.getpDate());
			product.setpDate(null);
			map.put("date", date);
			map.put("ttangDetail", product);
			map.put("currentPage", currentPage);
			mv.addAllObjects(map);
			mv.setViewName("jsonView");
			response.setContentType("application/json; charset=utf-8");
		}
		
		return mv;
	}
		
	
	
	// 위시리스트
	@RequestMapping("ttangWishList.do")
	public String ttangWishList() {
		return "mypage/wishList";
	}
	
	// 장바구니
	@RequestMapping("ttangBuyForm.do")
	public String ttangBuyForm() {
		return "mypage/buyForm";
	}
	
}
