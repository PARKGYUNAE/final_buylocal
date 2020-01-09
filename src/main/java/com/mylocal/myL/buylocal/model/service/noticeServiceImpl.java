package com.mylocal.myL.buylocal.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylocal.myL.buylocal.model.dao.noticeDao;
import com.mylocal.myL.buylocal.model.vo.Notice;
import com.mylocal.myL.common.PageInfo;
import com.mylocal.myL.common.Pagination;


@Service("noticeService")
public class noticeServiceImpl implements noticeService{
	@Autowired
	private noticeDao noticeDao;
	
	@Override
	public ArrayList<Notice> selectList(int currentPage) {
		int listCount = noticeDao.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return noticeDao.selectList(pi);
	}

}
