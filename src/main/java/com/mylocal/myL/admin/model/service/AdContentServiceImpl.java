package com.mylocal.myL.admin.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylocal.myL.admin.model.dao.AdContentDao;
import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.Product;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;

@Service("adContentService")
public class AdContentServiceImpl implements AdContentService{
	@Autowired
	AdContentDao adContentDao;

	// 신고자 목록
		@Override
		public ArrayList<Report> ReportSelectList() {
			return adContentDao.ReportSelectList();
		}

		// QnA 목록
		@Override
		public ArrayList<QnA> QnASelectList() {
			return adContentDao.QnASelectList();
		}

		// 아래 3개는 게시글 모아보기
		@Override
		public ArrayList<Product> TtangSelectList() {
			return adContentDao.TtangSelectList();
		}
		@Override
		public ArrayList<Product> HotDealSelectList() {
			return adContentDao.HotDealSelectList();
		}
		@Override
		public ArrayList<ShareBoard> ShareBoardSelectList() {
			return adContentDao.ShareBoardSelectList();
		}

		
		
		
		// 아래 3개는 신고리스트 상세보고 타러가기
		@Override
		public HotDeal SelectHotDeal(int h_no) {
			return adContentDao.SelectHotDeal(h_no);
		}

		@Override
		public Ttang SelectTtang(int t_no) {
			return adContentDao.SelectTtang(t_no);
		}

		@Override
		public ShareBoard SelectShareboard(int rt_no) {
			return adContentDao.SelectShareboard(rt_no);
		}

	


	
	
}
