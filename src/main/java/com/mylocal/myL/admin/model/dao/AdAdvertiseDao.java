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



@Repository("adAdvertiseDao")
public class AdAdvertiseDao {
	@Autowired
	SqlSessionTemplate sqlSession;


	
	// 광고목록
	public ArrayList<Advertise> AdvertiserSelectList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adAdvertiseMapper.AdvertiseSelectList");
	}



	// 광고 업데이트하기
	public int AdvertiserUpdate(Advertise ad) {
		return sqlSession.update("adAdvertiseMapper.AdvertiseUpdate", ad);
	}
	

	
	
	
}
