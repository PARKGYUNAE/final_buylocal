package com.mylocal.myL.admin.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylocal.myL.admin.model.dao.AdUserDao;
import com.mylocal.myL.admin.model.vo.Customer;
import com.mylocal.myL.admin.model.vo.Seller;

@Service("adUserService")
public class AdUserServiceImpl implements AdUserService{
	@Autowired
	AdUserDao adUserDao;

	// 사업자 등급 관리리스트
		@Override
		public ArrayList<Seller> BusinessUserGradeSelectList() {
			return adUserDao.BusinessUserGradeSelectList();
		}

		// 사업자 정보 리스트
		@Override
		public ArrayList<Seller> BusinessUserInfoSelectList() {
			return adUserDao.BusinessUserInfoSelectList();
		}

		// 일반 회원 구매 정보 리스트
		@Override
		public ArrayList<Customer> NormalUserBuyList() {
			return adUserDao.NormalUserBuyList();
		}

		// 일반 회원 정보
		@Override
		public ArrayList<Customer> NormalUserInfoList() {
			return  adUserDao.NormalUserInfoList();
		}

		// 일반 회원 정보 상세보기
		@Override
		public Customer selectCustomer(int sNo) {
			return adUserDao.SelectCustomer(sNo);
		}

		// 사업자 등급 업데이트
		@Override
		public int updateBusiness(Seller s) {
			return adUserDao.UpdateBusinessGrade(s);
		}

		// 일반회원 블랙처리 업데이트
		@Override
		public int UpdateNormalUser(Customer cu) {
			
			return adUserDao.UpdateNormalUser(cu);
		}

		// 사업자회원 블랙처리 업데이트
		@Override
		public int updateBusinessReport(Seller s) {
			return adUserDao.UpdateBusinessReport(s);
		}



	
	
}
