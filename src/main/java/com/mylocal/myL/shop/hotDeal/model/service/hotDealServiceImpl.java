package com.mylocal.myL.shop.hotDeal.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylocal.myL.common.PageInfo;
import com.mylocal.myL.common.Pagination;
import com.mylocal.myL.shop.hotDeal.model.dao.hotDealDao;
import com.mylocal.myL.shop.hotDeal.model.vo.HotDeal;

@Service("hotDealService")
public class hotDealServiceImpl implements hotDealService{
	@Autowired
	private hotDealDao hotdealDao;
	
	@Override
	public ArrayList<HotDeal> selectList(int currentPage) {
		int listCount = hotdealDao.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return hotdealDao.selectList(pi);
	}

}
