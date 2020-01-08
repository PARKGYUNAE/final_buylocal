package com.mylocal.myL.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylocal.myL.admin.model.vo.Advertise;
import com.mylocal.myL.admin.model.vo.Customer;
import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.Notice;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.Seller;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;



@Repository("aDao")
public class AdminDao {
	@Autowired
	SqlSessionTemplate sqlSession;

	// 공지사항 목록 들고 관리자 페이지로
	public ArrayList<Notice> NoticeSelectList() {
		return (ArrayList)sqlSession.selectList("AdminMapper.NoticeSelectList");
	}

	public int NoticeInsert(Notice n) {
		return sqlSession.insert("AdminMapper.NoticeInsert", n);
	}

	public Notice NoticeSelectOne(int nNo) {
		return sqlSession.selectOne("AdminMapper.NoticeSelectOne", nNo);
	}

	public int NoticeUpdatet(Notice n) {
		return sqlSession.update("AdminMapper.NoticeUpdate", n);
	}

	
	// 공지사항 삭제
	public int NoticeDelete(int nNo) {
		return sqlSession.update("AdminMapper.NoticeDelete", nNo);
	}


	
	
	
}
