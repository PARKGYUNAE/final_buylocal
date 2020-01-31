package com.mylocal.myL.user.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylocal.myL.common.Deal;
import com.mylocal.myL.user.model.vo.BusinessInfo;
import com.mylocal.myL.user.model.vo.Customer;

@Repository("userDao")
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 아이디 중복 검사
	public int checkId(String cId) {
		return sqlSession.selectOne("userMapper.checkId", cId);
	}
	
	// 이메일 중복 검사
	public int checkEmail(String cEmail) {
		return sqlSession.selectOne("userMapper.checkEmail", cEmail);
	}
	
	// 일반 회원 가입
	public int insertCustomer(Customer c) {
		return sqlSession.insert("userMapper.insertCustomer", c);
	}
	
	// 사업자 회원 가입 (사업자 정보 insert)
	public int insertBusinessInfo(BusinessInfo bi) {
		return sqlSession.insert("userMapper.insertBusinessInfo", bi);
	}

	// 회원 로그인
	public Customer selectCustomer(Customer c) {
		return (Customer)sqlSession.selectOne("userMapper.login", c);
	}
	
	// 회원 정보 수정
	public int updateCustomer(Customer c) {
		return sqlSession.update("userMapper.updateCustomer", c);
	}

	// 회원 탈퇴
	public int deleteCustomer(String cId) {
		return sqlSession.delete("userMapper.deleteCustomer", cId);
	}
	
	
	// 사업자 회원 거래 내역 조회
	public ArrayList<Deal> selectDealList(int cNo) {
//		System.out.println(cNo);
		ArrayList<Deal> list = (ArrayList)sqlSession.selectList("userMapper.selectDealList", cNo);
//		System.out.println(list);
		return list;
	}
	
	// 사업자 회원 상품 수령 체크
	public int updateRcv(Deal d) {
		System.out.println(d);
		return sqlSession.update("userMapper.updateRcv", d);
	}
	
	// 비밀번호 변경
	public int updatePwd(Customer c) {
		return sqlSession.update("userMapper.updatePwd", c);
	}
	
	// 구매 건수 조회
	public int countDeal(int cNo) {
		return sqlSession.selectOne("userMapper.countDeal", cNo);
	}
	

	
	// 범석
	// 구매 내역 조회
   public ArrayList<Deal> selectDealList2(int cNo) {
      return (ArrayList)sqlSession.selectList("userMapper.selectDealList2", cNo);
   }


	

}
