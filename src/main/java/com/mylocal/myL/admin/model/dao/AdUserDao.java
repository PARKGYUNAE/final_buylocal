package com.mylocal.myL.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylocal.myL.admin.model.vo.Advertise;
import com.mylocal.myL.admin.model.vo.Customer;
import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.Seller;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;



@Repository("adUserDao")
public class AdUserDao {
	@Autowired
	SqlSessionTemplate sqlSession;

	
	// 사업자 등급 관리 리스트
		public ArrayList<Customer> BusinessUserGradeSelectList() {
			return (ArrayList)sqlSession.selectList("adUserMapper.BusinessUserGradeSelectList");
		}

		// 사업자 정보 리스트
		public ArrayList<Customer> BusinessUserInfoSelectList() {
			return (ArrayList)sqlSession.selectList("adUserMapper.BusinessUserInfoSelectList");
		}
		// 일반 회원 정보
		public ArrayList<Customer> NormalUserInfoList() {
			return (ArrayList)sqlSession.selectList("adUserMapper.NormalUserInfoList");
		}

		// 일반 회원 구매 리스트
		public ArrayList<Customer> NormalUserBuyList() {
			return (ArrayList)sqlSession.selectList("adUserMapper.NormalUserBuyList");
		}



		// 사업자 정보 상세보기
		public Customer SelectCustomer(int cNo) {
			return sqlSession.selectOne("adUserMapper.selectCustomer", cNo);
		}


		// 사업자 등급 업데이트
		public int UpdateBusinessGrade(Customer cu) {
			return sqlSession.update("adUserMapper.updateBusinessGrade", cu);
		}

		// 일반 회원 블랙/정지 처리 취소
		public int UpdateNormalUser(Customer cu) {
			return sqlSession.update("adUserMapper.updateNormalUser", cu);
		}

		// 사업자회원 블랙처리(아직 안만듬)
		public int UpdateBusinessReport(Customer cu) {
			return sqlSession.update("adUserMapper.updateBusinessReport", cu);
		}
		
	
}
