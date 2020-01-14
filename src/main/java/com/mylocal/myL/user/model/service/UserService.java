package com.mylocal.myL.user.model.service;

import com.mylocal.myL.user.model.vo.BusinessInfo;
import com.mylocal.myL.user.model.vo.Customer;

public interface UserService {
	
	// 1. 회원 로그인 서비스
	public Customer loginCustomer(Customer c);
//	public Seller loginSeller(Seller s);
	
	// 2. 회원 가입 서비스
	public int insertCustomer(Customer c);
	public int insertBusinessInfo(BusinessInfo bi);
	
	// 3. 회원 정보 수정 서비스
	public int updateCustomer(Customer c);
//	public int updateSeller(Seller s);
	
	// 4. 회원 탈퇴 서비스
//	public int deleteCustomer(String cId);
//	public int deleteSeller(String sId);
	
	// 5. 아이디 중복 체크 서비스
	public int checkIdDup(String cId);
	
	// 6. 비밀번호 찾기 서비스

	
	
}
