package com.mylocal.myL.admin.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylocal.myL.admin.model.dao.AdminDao;
import com.mylocal.myL.admin.model.vo.Advertise;
import com.mylocal.myL.admin.model.vo.Customer;
import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.Notice;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.Seller;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;

@Service("adService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	AdminDao adDao;

	// 공지사항 목록 조회
	@Override
	public ArrayList<Notice> NoticeSelectList() {
		return adDao.NoticeSelectList();
	}

	// 공지사항 등록
	@Override
	public int NoticeInsert(Notice n) {
		return adDao.NoticeInsert(n);
	}

	// 공지사항 디테일
	@Override
	public Notice NoticeSelectOne(int nNo) {
		return adDao.NoticeSelectOne(nNo);
	}

	// 공지사항 수정
	@Override
	public int NoticeUpdate(Notice n) {
		return adDao.NoticeUpdatet(n);
	}

	// 공지사항 삭제
	@Override
	public int NoticeDelete(int nNo) {
		// TODO Auto-generated method stub
		return adDao.NoticeDelete(nNo);
	}

	

	


	
	
}
