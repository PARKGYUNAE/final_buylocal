package com.mylocal.myL.shop.hotDeal.model.service;

import java.util.ArrayList;

import com.mylocal.myL.shop.hotDeal.model.vo.HotDeal;

public interface hotDealService {

	ArrayList<HotDeal> selectList(int currentPage);
	
}
