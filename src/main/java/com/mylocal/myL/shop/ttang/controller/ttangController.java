package com.mylocal.myL.shop.ttang.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mylocal.myL.common.Pagination;
import com.mylocal.myL.shop.ttang.model.service.ttangService;
import com.mylocal.myL.shop.ttang.model.vo.Ttang;

@Controller
public class ttangController {
	
	@Autowired
	private ttangService ttangService;
	
	// [메인] 
	/*@RequestMapping("ttangMain.do")
	public String ttangMain() {
		return "ttang/ttangMain";
	}*/

	@RequestMapping("ttangMain.do")
	public String ttangMain(Model model, 
			@RequestParam(value="page", required=false) Integer page) {
		int currentPage = page!= null ? page : 1;
		ArrayList<Ttang> list = ttangService.selectList(currentPage);
		model.addAttribute("list", list);
		model.addAttribute("pi", Pagination.getPageInfo());
		return "ttang/ttangMain";
	}
	
	
	// 땡처리 디테일
	@RequestMapping("ttangDetail.do")
	public String ttangDetail() {
		return "ttang/ttangDetail";
	}
	
	// 땡처리 상품등록
	@RequestMapping("ttangInsertForm.do")
	public String ttangInsert() {
		return "ttang/ttangInsertForm";
	}

}
