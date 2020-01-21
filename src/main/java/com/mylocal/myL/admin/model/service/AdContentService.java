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


		// 미답변 QnA목록
		ArrayList<QnA> QnASelectList();
		
		// 답변 QnA 목록
		ArrayList<QnA> QnASelectList2();

		// 아래 3개는 게시글 모아보기
		ArrayList<Product> TtangSelectList();
		ArrayList<Product> HotDealSelectList();
		/*ArrayList<ShareBoard> ShareBoardSelectList();*/




		/*ShareBoard SelectShareboard(int rt_no);*/

		
		// qna 갯수 가져오기
		int CountQna();
		
		// 신고리스트 카운트
		int CountReport();

		// qna 상세보기
		QnA selctQna(int qNo);
		
		
		
		// 답변한 내용은 안보이게끔 status
		int updateQna(int qNo);

		// 신고하기 물건등록폼
		int ReportInsert(Report r);

		// 신고하기 상세보기
		Report selectReport(int rtNo);

		// 허위신고 삭제하기
		int deleteReport(int rtNo);

		// 신고될 상품 가져오기
		Product SelectProduct(int rtNo);

		// 회원 신고하기
		int updateCustomer(int getcNo);




	

		


		
	
	

}
