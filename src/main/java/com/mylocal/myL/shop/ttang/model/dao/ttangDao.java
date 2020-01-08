package com.mylocal.myL.shop.ttang.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylocal.myL.common.PageInfo;
import com.mylocal.myL.shop.ttang.model.vo.Ttang;

@Repository("ttangDao")
public class ttangDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		return sqlSession.selectOne("ttangMapper.getListCount"); 
	}
	
	public ArrayList<Ttang> selectList(PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowbounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("ttangMapper.selectList", null, rowbounds);
	}
	
}
