package com.mylocal.myL.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.Product;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;



@Repository("adContentDao")
public class AdContentDao {
	@Autowired
	SqlSessionTemplate sqlSession;



		// 신고 목록
		public ArrayList<Report> ReportSelectList() {
			return (ArrayList)sqlSession.selectList("adContentMapper.ReportSelectList");
		}

		// QnA 미응답 목록
		public ArrayList<QnA> QnASelectList() {
			return (ArrayList)sqlSession.selectList("adContentMapper.QnASelectList");
		}
		
		// QnA 답변 목록
		public ArrayList<QnA> QnASelectList2() {
			return (ArrayList)sqlSession.selectList("adContentMapper.QnASelectList2");
		}

		// 게시글 목록(땡처리/핫딜/나눔게시판)
		public ArrayList<Product> TtangSelectList() {
			return (ArrayList)sqlSession.selectList("adContentMapper.TtangSelectList");
		}
		public ArrayList<Product> HotDealSelectList() {
			return (ArrayList)sqlSession.selectList("adContentMapper.HotDealSelectList");
		}
/*		public ArrayList<ShareBoard> ShareBoardSelectList() {
			return (ArrayList)sqlSession.selectList("adContentMapper.ShareBoardSelectList");
		}*/
		
		
		// 게시글 목록 보러가기(상세보기를 위한)



/*		public ShareBoard SelectShareboard(int rt_no) {
			return sqlSession.selectOne("adContentMapper.ShareBoardSelectList");	
			}*/

		// qna 갯수 가져오기
		public int getQnaListCount() {
			return sqlSession.selectOne("adContentMapper.getQnaListCount");	
		}

		// qna 상세보기
		public QnA SelectQna(int qNo) {
			// TODO Auto-generated method stub
			return sqlSession.selectOne("adContentMapper.selectQna", qNo);
		}

		public int UpdateQna(int qNo) {
			return sqlSession.update("adContentMapper.updateQna", qNo);
		}

		// 신고하기 입력
		public int InsertReport(Report r) {
			return sqlSession.update("adContentMapper.insertReport", r);
		}

		// 신고된 갯수 불러오기
		public int getReportListCount() {
			return sqlSession.selectOne("adContentMapper.getReportListCount");	
		}
		// 신고하기 상세보기
		public Report SelectReport(int rtNo) {
			return sqlSession.selectOne("adContentMapper.selectReport", rtNo);
		}

		public int UpdateReportCancel(int rtNo) {
			return sqlSession.update("adContentMapper.updateReportCancel", rtNo);
		}

		public Product SelectProduct(int rtNo) {
			return sqlSession.selectOne("adContentMapper.selectProduct", rtNo);
		}

		public int uptdateCustomer(int getcNo) {
			return sqlSession.update("adContentMapper.updateCustomer", getcNo);
		}


	
	
}
