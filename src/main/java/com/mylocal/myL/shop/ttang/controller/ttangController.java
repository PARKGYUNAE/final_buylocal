package com.mylocal.myL.shop.ttang.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	@RequestMapping("ttangDetail.do")
	public String ttangDetail() {
		return "ttang/ttangDetail";
	}
	
	
}
