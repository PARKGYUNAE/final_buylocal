package com.mylocal.myL.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mylocal.myL.admin.model.service.AdAdvertiseService;
import com.mylocal.myL.admin.model.vo.Advertise;


@Controller
public class AdAdvertiseController {
	@Autowired
	AdAdvertiseService adAdvertiseService;
	
	// 지역 광고
	@RequestMapping("advertise.do")
	public ModelAndView AdvertiseMenu(ModelAndView mv) {
		ArrayList<Advertise> list = adAdvertiseService.AdvertiseSelectList();
		
		mv.setViewName("admin/advertise");
		
		
	return mv;
	}
	
	
	// 업데이트 추가해두기 (버튼식으로 눌러서 업데이트 하게끔 status = y)
	@RequestMapping("advertiseUpdate.do")
	public ModelAndView advertiseUpdate(ModelAndView mv, Advertise ad) {
		
		int result = adAdvertiseService.UpdateAdvertise(ad);
		
		
		
		return mv;
	}
	
	
	}
	
	

