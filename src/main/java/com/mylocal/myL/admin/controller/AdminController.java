package com.mylocal.myL.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mylocal.myL.admin.model.service.AdminService;
import com.mylocal.myL.admin.model.vo.Notice;

@Controller
public class AdminController {
	@Autowired
	AdminService adService;
	
	
	// 공지사항 리스트 들고 이동
	@RequestMapping("admin.do")
	public ModelAndView ContentMenu(ModelAndView mv) {
		ArrayList<Notice> list = adService.NoticeSelectList();
		
		
		mv.setViewName("admin/main");
		
		
	return mv;
	}
	
	// 접속자수 들고 오기 (예정)
	
	
	// 공지사항 수정 / 삭제 / 입력 추가할 것
	
	// 공지사항 등록폼으로(아직 화면이 미구현 noticeInsertForm 만들것)
	/*@RequestMapping("noticeView.do")
	public String noticeInsertView() {
		return "admin/noticeInsertForm";
		
	}*/
	
	/*// 공지사항 입력
	@RequestMapping("noticeInsert.do")
		public String NoticeInsert(Notice n) {
		
		int result = adService.NoticeInsert(n);
		
		return "redirect:admin.do";
		
	}*/
	
	// 공지사항 수정/삭제/입력은 공지사함 페이지가 있어야 할듯?
	
	/*@RequestMapping("noticeDetail.do")
		public String NoticeDetail(Model model, int nNo, Notice n) {
	
		n = adService.NoticeSelectOne(nNo);
		
		return "admin/adminDetailView"; // 규내 누나 경로로 가자
		
	}*/
	
	/*// 수정하기 페이지로 이동
	@RequestMapping("noticeUpdateView.do")
	public String NoticeUpdateView(Model model, int nNo, Notice n) {
		n = adService.NoticeSelectOne(nNo);
		// n.setnContent(n.getnContent().replace("<br>", "\n"));
		model.addAttribute("notice", n);
		return "admin/noticeUpdateView"; // 규내 누나 경로로 가자

	}*/
	
	/*// 수정하기
	@RequestMapping("noticeUpdate.do")
	public String NoticeUpdate(Notice n) {
		
		
		int result = adService.NoticeUpdate(n);
				
		return ""; //규내누나 페이지로 가자
		
	}*/
	
	
	/*// 삭제 업데이트 하는식으로 하자
	@RequestMapping("noticeDelete.do")
	public String NoticeDelete(int nNo) {
		
		int result = adService.NoticeDelete(nNo);
		
		
		return "";
		
	}*/
	
	
	// 관리자 모드 차트 보기
	@RequestMapping("adminChart.do")
	public String ChartMenu() {
		return "admin/chart";
	}
	
	
	

	
	
}
