package com.mylocal.myL.admin.controller;

import java.util.ArrayList;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mylocal.myL.admin.model.exception.AdContentException;
import com.mylocal.myL.admin.model.exception.AdUserException;
import com.mylocal.myL.admin.model.service.AdContentService;
import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.Product;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;

@Controller
public class AdContentController {
	@Autowired
	AdContentService adContentService;

	@Autowired // 메일 전송을 위한
	private JavaMailSender mailSender;

	// QnA 답변안한 갯수 불러오기
	@RequestMapping("qnaCount.do")
	public ModelAndView qnaCount(ModelAndView mv, HttpServletRequest request) {

		HttpSession session = request.getSession();

		int count = adContentService.CountQna();

		// Count 세션 Name
		int Number = count;

		session.setAttribute("QnACount", Number);

		mv = new ModelAndView();

		mv.addObject("count", count);

		mv.setViewName("admin/main");
		return mv;
	}
	
	// QnA 눌렀을때 갯수 최신화해서 받아오기
	
	
	// QnA 답변안한 갯수 불러오기
	@RequestMapping("refreshQnaCount.do")
	public String refreshQnaCount(RedirectAttributes redirect, ModelAndView mv, HttpServletRequest request) {

		HttpSession session = request.getSession();

		int count = adContentService.CountQna();

		// Count 세션 Name
		int Number = count;

		session.setAttribute("QnACount", Number);

		mv = new ModelAndView();

		mv.addObject("count", count);

		mv.setViewName("admin/qna");
		
		return "redirect:qna.do";
	}

	// QnA 답변하기 페이지로 이동
	@RequestMapping("awnser.do")
	public ModelAndView anser(ModelAndView mv, int qNo) {

		QnA qna = adContentService.selctQna(qNo);

		qna.setqTitle(qna.getqContent().replace("<br>", "\n"));

		mv.addObject("qna", qna).setViewName("admin/awnser");

		return mv;
	}

	// 게시판 관리 (content, qna, black 목록 보여주는곳 수정완료)
	@RequestMapping("boardList.do")
	public String BoardListMenu() {
		return "admin/boardList";
	}

	// 게시글 관리 메뉴 리스트
	@RequestMapping("content.do")
	public ModelAndView ContentMenu(ModelAndView mv) {
		ArrayList<Product> list1 = adContentService.HotDealSelectList(); // 핫딜
		ArrayList<Product> list2 = adContentService.TtangSelectList(); // 땡처리
		// ArrayList<ShareBoard> list3 = adContentService.ShareBoardSelectList(); //
		// 나눔게시판

		if (list1 != null || list2 != null /* || list3 !=null */) {
			mv.addObject("list1", list1); // 핫딜
			mv.addObject("list2", list2); // 땡처리
			// mv.addObject("list3", list3); // 나눔 게시판
			mv.setViewName("admin/content");

		} else {
			throw new AdContentException("전체 게시글 조회 실패!");
		}

		return mv;
	}

	// QNA 관리 메뉴 리스트
	@RequestMapping("qna.do")
	public ModelAndView QnaMenu(ModelAndView mv) {
		ArrayList<QnA> list = adContentService.QnASelectList();

		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/qna");

		} else {
			throw new AdContentException("QNA 조회 실패!");
		}

		return mv;
	}

	// QnA 디테일폼
	@RequestMapping("qnaDetail.do")
	public ModelAndView qnaDetail(ModelAndView mv, int qNo, String cEmail) {

		QnA qna = null;

		qna = adContentService.selctQna(qNo);

		if (qna != null) {
			mv.addObject("qna", qna);
			mv.setViewName("admin/qnaDetailForm");

		} else {
			throw new AdUserException("Qna 상세보기 실패");
		}

		return mv;

	}

	// 신고리스트 메뉴(report 테이블 사용) 리스트
	@RequestMapping("report.do")
	public ModelAndView BlackMenu(ModelAndView mv) {
		ArrayList<Report> list = adContentService.ReportSelectList();

		mv.setViewName("admin/report");

		return mv;
	}

	// 각 메뉴별로 디테일뷰 만들어주기(팝업창으로 띄우자)
	// QNA / 신고 / 게시판별 상세보기

	// 신고리스트는 업데이트 하는걸로 (유저 status='N'로 사업자 일반유저 둘다 해야할듯)

	// 신고하기 작성 뷰는 각 디테일뷰(핫딜, 나눔, 땡처리)에서 건드려줄것

	/*
	 * // 제3자가 신고하기 작성 신고하기는 변수명이 달라서 여러개를 가져와야함
	 * 
	 * @RequestMapping("reportInsert.do") public String NoticeInsert(Notice n) {
	 * 
	 * int result = adContentService.NoticeInsert(n);
	 * 
	 * return "";
	 * 
	 * }
	 */

	// 신고하기 상세보기 (이안에서 업데이트할거임) 공통값을 꺼내와야함 각자 온 게시판이 다름
	@RequestMapping("roportView.do")
	public ModelAndView ReportView(ModelAndView mv, int rt_no, int h_no, int t_no, int option) {

		// 조건 3개 달아줘야할듯 핫딜일때 나눔일때 땡처리일때

		HotDeal hotdeal = adContentService.SelectHotDeal(h_no);

		Ttang ttang = adContentService.SelectTtang(t_no);

		// ShareBoard shareboard = adContentService.SelectShareboard(rt_no);

		// hotdeal, ttang, shareboard 조건 달아서 updateForm으로 이동

		// 일단 hotDeal을 예씨로 나머지도 넣어야함
		mv.addObject("hotdeal", hotdeal).setViewName("board/boardUpdateForm");

		return mv;
	}

	// 신고하기 업데이트(해당 유저 등급을 status='N' 으로 변경!)
	@RequestMapping("bupdate.do")
	public ModelAndView boardUpdate(ModelAndView mv, HotDeal hotdeal, Ttang ttang, ShareBoard shareboard) {

		return mv;
	}

	// 메일 전송
	@RequestMapping("mailSending.do")
	public String mailSending(RedirectAttributes redirect, HttpServletRequest request, int qNo) {



		int result = adContentService.updateQna(qNo);

		String setfrom = "lko4400@naver.com";
		String tomail = request.getParameter("tomail"); // 받는 사람 이메일
		String title = request.getParameter("title"); // 제목
		String content = request.getParameter("content"); // 내용

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
			
			
		} catch (Exception e) {
			System.out.println(e);
		}

		return "redirect:qnaCount.do";
	}

}
