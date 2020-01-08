package com.mylocal.myL.admin.model.service;

import java.util.ArrayList;

import com.mylocal.myL.admin.model.vo.Advertise;
import com.mylocal.myL.admin.model.vo.Customer;
import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.Notice;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.Seller;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;

public interface AdminService {

	// 광고 목록 보여주기 list뷰

	ArrayList<Notice> NoticeSelectList();

	// 공지사항 등록
	int NoticeInsert(Notice n);

	// 공지사항 상세보기
	Notice NoticeSelectOne(int nNo);

	// 공지사항 업데이트
	int NoticeUpdate(Notice n);

	// 공지사항 삭제
	int NoticeDelete(int nNo);
	

	
	

}
