package com.mylocal.myL.shop.hotDeal.controller;

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
import com.mylocal.myL.shop.hotDeal.model.service.hotDealService;
import com.mylocal.myL.shop.hotDeal.model.vo.Product;
import com.mylocal.myL.shop.hotDeal.model.vo.Review;

@Controller
public class HotDealController {
	@Autowired
	private hotDealService hotdealService;

	@RequestMapping("hotDealMenu.do")
	public String hotDealMenu(Model model, @RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;
		ArrayList<Product> list = hotdealService.selectList(currentPage);
		model.addAttribute("list", list);
		model.addAttribute("pi", Pagination.getPageInfo());

		return "hotDeal/hotDealMain";
	}

	@RequestMapping("hotDealDetail.do")
	public ModelAndView hotDealDetail(ModelAndView mv, int pNo, @RequestParam(value="page", required=false) Integer page,
			@RequestParam(value="divide", required=false) String str, HttpServletRequest request, HttpServletResponse response) {
			int currentPage = page != null ? page : 1;
	
			System.out.println(str);
			Product product = null;
	
			boolean flag = false;
			Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (Cookie c : cookies) {
					if (c.getName().equals("pNo" + pNo)) {
						flag = true; // 해당 게시글에 대한 쿠키 존재 (이미 읽은 게시물)
					}
				}
			}
			if (!flag) {
				// 처음 읽은 게시물 일 때
				Cookie c = new Cookie("pNo" + pNo, String.valueOf(pNo));
				c.setMaxAge(1 * 24 * 60 * 60); // 하루동안 쿠키 저장
				response.addCookie(c);
			}
			product = hotdealService.selectBoard(pNo, flag);
			ArrayList<Review> review = hotdealService.selectReviewList(pNo);
			System.out.println(review);
			
			if(str == null) {
				mv.addObject("hotdealDetail", product).addObject("currentPage", currentPage);
				mv.addObject("review", review);
				mv.setViewName("hotDeal/hotDealDetail");
			
			}else {
				Map<String, Object> map = new HashMap<String, Object>();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				String date = sdf.format(product.getpDate());
				product.setpDate(null);
				map.put("date", date);
				map.put("hotdealDetail", product);
				map.put("currentPage", currentPage);
				map.put("review", review);
				mv.addAllObjects(map);
				mv.setViewName("jsonView");
				response.setContentType("application/json; charset=utf-8"); 
			}
			
			return mv;
		
	}

	@RequestMapping("insertHotDeal.do")
	public String insertHotDeal() {
		return "hotDeal/insertHotDealForm";
	}

	@RequestMapping("hotDealQnA.do")
	public String hotDealQnA() {
		return "hotDeal/hotDealQnA";
	}

	@RequestMapping("hotDealBuyForm.do")
	public String hotDealBuyForm() {
		return "myPage/buyForm";
	}

	@RequestMapping("hotDealCheckOutForm.do")
	public String hotDealCheckOutForm() {
		return "myPage/checkOutForm";
	}

	@RequestMapping("hotDealWishList.do")
	public String hotDealWishList() {
		return "myPage/wishList";
	}

	@RequestMapping("hotDealInsertForm.do")
	public String hotDealInsert() {
		return "hotDeal/hotDealInsertForm";
	}
}
