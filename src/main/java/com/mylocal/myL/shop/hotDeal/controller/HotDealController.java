package com.mylocal.myL.shop.hotDeal.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mylocal.myL.common.Pagination;
import com.mylocal.myL.shop.hotDeal.model.service.hotDealService;
import com.mylocal.myL.shop.hotDeal.model.vo.HotDeal;

@Controller
public class HotDealController {
	@Autowired
	private hotDealService hotdealService;
	
	@RequestMapping("hotDealMenu.do")
	public String hotDealMenu(Model model, @RequestParam(value="page", required=false) Integer page) {
		int currentPage = page != null ? page : 1;
		ArrayList<HotDeal> list = hotdealService. selectList(currentPage);
		model.addAttribute("list", list);
		model.addAttribute("pi", Pagination.getPageInfo());
		return "hotDeal/hotDealMain";
	}
	
	@RequestMapping("hotDealDetail.do")
	public String hotDealDetail() {
		return "hotDeal/hotDealDetail";
	}
	
	/*@RequestMapping("insertHotDeal.do")
	public String insertHotDeal() {
		return "hotDeal/insertHotDealForm";
	}
	*/
	
	
	@RequestMapping("hotDealQnA.do")
	public String hotDealQnA() {
		return "hotDeal/hotDealQnA";
	}
	
	
	/*@RequestMapping("hotDealInsertForm.do")
	public String hotDealInsert() {
		return "hotDeal/hotDealInsertForm";
	}*/
}
