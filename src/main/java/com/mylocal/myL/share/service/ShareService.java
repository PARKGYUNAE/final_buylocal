package com.mylocal.myL.share.service;

import java.util.ArrayList;

import com.mylocal.myL.share.model.vo.Reply;
import com.mylocal.myL.share.model.vo.ShareBoard;

public interface ShareService {

	// 게시글 목록 조회
	public ArrayList<ShareBoard> selectList();

	// 게시글 쓰기
	public int insertBoard(ShareBoard sb);

	// 게시글 상세보기
	public ShareBoard detailBoard(ShareBoard sbno);

	// 게시글 수정
	public int updateBoard(ShareBoard sb);

	// 게시글 삭제
	public int deleteBoard(int shno);

	//댓글 등록 
	public int insertReply(Reply r);

	// 댓글 목록조회
	public ArrayList<Reply> selectReplyList(int sbNo);

	// 댓글 수정
	public int updateReply(Reply r);

	// 댓글 삭제
	public int deleteReply(int rNo);

	

}
