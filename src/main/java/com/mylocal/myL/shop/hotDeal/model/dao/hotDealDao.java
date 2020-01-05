package com.mylocal.myL.shop.hotDeal.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylocal.myL.common.PageInfo;
import com.mylocal.myL.shop.hotDeal.model.vo.HotDeal;

@Repository("hotDealDao")
public class hotDealDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("hotDealMapper.getListCount");
	}
	
	public ArrayList<HotDeal> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowbounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("hotDealMapper.selectList", null, rowbounds);
	}

	
}
