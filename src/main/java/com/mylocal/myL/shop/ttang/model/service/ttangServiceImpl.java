package com.mylocal.myL.shop.ttang.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylocal.myL.common.PageInfo;
import com.mylocal.myL.common.Pagination;
import com.mylocal.myL.shop.ttang.model.vo.Product;
import com.mylocal.myL.shop.ttang.model.dao.ttangDao;

@Service("ttangService")
public class ttangServiceImpl implements ttangService{
	@Autowired
	private ttangDao ttangDao;

	@Override
	public ArrayList<Product> selectList(int currentPage) {
		int listCount = ttangDao.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return ttangDao.selectList(pi);
	}
	
	/*@Override
	public Product selectBoard(int pNo, boolean flag) {
		return ttangDao.selectBoard(pNo);
	}*/
	
	@Override
	public Product selectBoard2(int pNo, boolean flag) {
		return ttangDao.selectBoard2(pNo);
	}

}
