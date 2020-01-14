package com.mylocal.myL.admin.model.service;

import java.util.ArrayList;

import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.Product;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;

public interface AdContentService {

	
	// 신고 목록 보여주기 list 뷰
		ArrayList<Report> ReportSelectList();


		// QnA목록
		ArrayList<QnA> QnASelectList();

		// 아래 3개는 게시글 모아보기
		ArrayList<Product> TtangSelectList();
		ArrayList<Product> HotDealSelectList();
		/*ArrayList<ShareBoard> ShareBoardSelectList();*/


		// 신고하기 리스트들 뷰로 이동하기 위한 조건 3개 몰아쓰기
		HotDeal SelectHotDeal(int h_no);

		Ttang SelectTtang(int t_no);

		/*ShareBoard SelectShareboard(int rt_no);*/

		
		// qna 갯수 가져오기
		int CountQna();

		// qna 상세보기
		QnA selctQna(int qNo);
		
		// 답변한 내용은 안보이게끔 status
		int updateQna(int qNo);


		
	
	

}
