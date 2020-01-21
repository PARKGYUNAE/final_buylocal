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

	
	// 사업자 등록 관리 리스트(전부다)
		ArrayList<Customer> BusinessUserGradeSelectList();

		// 사업자 정보 리스트(인증된 사람들만)
		ArrayList<Customer> BusinessUserInfoSelectList();
		
		//  사업자 정보 리스트(신고된 회원들)
		ArrayList<Customer> BusinessUserInfoSelectList2();

		// 일반회원 구매 정보리스트
		ArrayList<Customer> NormalUserBuyList();

	    // 일반 회원 정보 리스트(두명 다 쓸거같은뎅)
		ArrayList<Customer> NormalUserInfoList();

		// 사업자 정보 상세보기(통계) 두명이 같이씀
		Customer selectCustomer(int cNo);

		// 사업자 등급 업데이트
		int updateBusiness(Customer cu);

		// 일반회원 신고/탈퇴 관련 처리
		int UpdateNormalUser(Customer cu);

		// 사업자 회원 탈퇴 / 철회
		int updateBusinessReport(Customer cu);

		// 일반 회원 정보 상세보기
		Customer selectNormalCustomer(int cNo);

	
		
	
	

}
