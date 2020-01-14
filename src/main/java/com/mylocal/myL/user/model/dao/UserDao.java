package com.mylocal.myL.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylocal.myL.user.model.vo.BusinessInfo;
import com.mylocal.myL.user.model.vo.Customer;

@Repository("userDao")
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 일반 회원 가입
	public int insertCustomer(Customer c) {
		return sqlSession.insert("userMapper.insertCustomer", c);
	}
	
	// 사업자 회원 가입 
	public int insertBusinessInfo(BusinessInfo bi) {
		return sqlSession.insert("userMapper.insertBusinessInfo", bi);
	}

	// 일반 회원 로그인
	public Customer selectCustomer(Customer c) {
		return (Customer)sqlSession.selectOne("userMapper.selectOneCustomer", c);
	}
	
	// 일반 회원 정보 수정
	public int updateCustomer(Customer c) {
		return sqlSession.update("userMapper.updateCustomer", c);
	}
	

	// 일반 회원 탈퇴
	public int deleteCustomer(String cId) {
		return sqlSession.delete("userMapper.deleteCustomer", cId);
	}
	
	// 사업자 회원 탈퇴 -> 같은 메소드 이용 가능?
	public int deleteSeller(String sId) {
		return sqlSession.delete("userMapper.deleteSeller", sId);
	}
	
	// 일반 회원 아이디 중복 확인 
	public int checkIdDup(String cId) {
		return sqlSession.selectOne("userMapper.idCheck", cId);
	}

	
	
	

}
