package com.mylocal.myL.admin.model.service;

import java.util.ArrayList;

import com.mylocal.myL.admin.model.vo.Advertise;
import com.mylocal.myL.admin.model.vo.Customer;
import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.Seller;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;

public interface AdUserService {

	
	// 사업자 등록 관리 리스트
		ArrayList<Seller> BusinessUserGradeSelectList();

		// 사업자 정보 리스트
		ArrayList<Seller> BusinessUserInfoSelectList();

		// 일반회원 구매 정보리스트
		ArrayList<Customer> NormalUserBuyList();

	    // 일반 회원 정보 리스트
		ArrayList<Customer> NormalUserInfoList();

		// 사업자 정보 상세보기(통계) 두명이 같이씀
		Customer selectCustomer(int sNo);

		// 사업자 등급 업데이트
		int updateBusiness(Seller s);

		// 일반회원 블랙처리 해제
		int UpdateNormalUser(Customer cu);

		// 사업자 회원 블랙처리 해제
		int updateBusinessReport(Seller s);

		
	
	

}
