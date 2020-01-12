package com.mylocal.myL.share.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylocal.myL.share.model.vo.Reply;
import com.mylocal.myL.share.model.vo.ShareBoard;

@Repository("shareDao")
public class ShareDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<ShareBoard> selectList() {
		
		return (ArrayList)sqlSession.selectList("shareboardMapper.selectList");
	}

	public ShareBoard detailBoard(ShareBoard sbno) {
		
		return sqlSession.selectOne("shareboardMapper.detailBoard", sbno);
	}

	public int insertBoard(ShareBoard sb) {
		
		return sqlSession.insert("shareboardMapper.insertBoard",sb);
	}

	public int updateBoard(ShareBoard sb) {
		
		return sqlSession.update("shareboardMapper.updateBoard", sb);
	}

	public int deleteBoard(int shno) {
		
		return sqlSession.update("shareboardMapper.deleteBoard", shno);
	}

	public int insertReply(Reply r) {
		// TODO Auto-generated method stub
		return sqlSession.insert("replyMapper.insertReply", r);
	}

	public ArrayList<Reply> selectReplyList(int sbNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("replyMapper.selectList",sbNo);
	}

	public int updateReply(Reply r) {
		// TODO Auto-generated method stub
		return sqlSession.update("replyMapper.updateReply", r);
	}

	public int deleteReply(int rNo) {
		// TODO Auto-generated method stub
		return sqlSession.update("replyMapper.deleteReply", rNo);
	}
}
