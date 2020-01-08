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

		// QnA 목록
		public ArrayList<QnA> QnASelectList() {
			return (ArrayList)sqlSession.selectList("adContentMapper.QnASelectList");
		}

		// 게시글 목록(땡처리/핫딜/나눔게시판)
		public ArrayList<Product> TtangSelectList() {
			return (ArrayList)sqlSession.selectList("adContentMapper.TtangSelectList");
		}
		public ArrayList<Product> HotDealSelectList() {
			return (ArrayList)sqlSession.selectList("adContentMapper.HotDealSelectList");
		}
		public ArrayList<ShareBoard> ShareBoardSelectList() {
			return (ArrayList)sqlSession.selectList("adContentMapper.ShareBoardSelectList");
		}
		
		
		// 게시글 목록 보러가기(상세보기를 위한)

		public HotDeal SelectHotDeal(int h_no) {
			return sqlSession.selectOne("adContentMapper.ShareBoardSelectList");		
			}

		public Ttang SelectTtang(int t_no) {
			return sqlSession.selectOne("adContentMapper.ShareBoardSelectList");		
			}

		public ShareBoard SelectShareboard(int rt_no) {
			return sqlSession.selectOne("adContentMapper.ShareBoardSelectList");	
			}
	
	
}
