package com.mylocal.myL.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.mylocal.myL.admin.model.vo.Advertise;
import com.mylocal.myL.admin.model.vo.Customer;
import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.Notice;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.Seller;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;
import com.mylocal.myL.common.Deal;

public interface AdminService {

	// 공지사항 리스트뷰
	ArrayList<Notice> NoticeSelectList(int currentPage);

	
	// 공지사항 상세보기
	Notice selectNotice(int nNo, boolean flag);
	
	
	// 공지사항 등록
	int NoticeInsert(Notice n);


	// 공지사항 업데이트
	int NoticeUpdate(Notice n);

	// 공지사항 삭제
	int NoticeDelete(int nNo);

	// 범석
	ArrayList<Deal> selectDeal();

	// 범석
	HashMap<String, Integer> selectDeal(String a);


	
	

}
