package com.mylocal.myL.share.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylocal.myL.share.dao.ShareDao;
import com.mylocal.myL.share.model.vo.Reply;
import com.mylocal.myL.share.model.vo.ShareBoard;

@Service("shareService")
public class ShareServiceImpl implements ShareService{
	
	@Autowired
	private ShareDao shareDao;

	@Override
	public ArrayList<ShareBoard> selectList() {
		
		return shareDao.selectList();
	}

	@Override
	public int insertBoard(ShareBoard sb) {
		
		return shareDao.insertBoard(sb);
	}


	@Override
	public int updateBoard(ShareBoard sb) {
		
		
		return shareDao.updateBoard(sb);
	}

	@Override
	public int deleteBoard(int shno) {
		
		return shareDao.deleteBoard(shno);
	}

	@Override
	public ShareBoard detailBoard(ShareBoard sbno) {
		return shareDao.detailBoard(sbno);
	}

	@Override
	public int insertReply(Reply r) {
		return shareDao.insertReply(r);
	}

	@Override
	public ArrayList<Reply> selectReplyList(int sbNo) {
		return shareDao.selectReplyList(sbNo);
	}

	@Override
	public int updateReply(Reply r) {
		// TODO Auto-generated method stub
		return shareDao.updateReply(r);
	}

	@Override
	public int deleteReply(int rNo) {
		// TODO Auto-generated method stub
		return shareDao.deleteReply(rNo);
	}

	

}
