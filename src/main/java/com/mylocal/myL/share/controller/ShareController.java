package com.mylocal.myL.share.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mylocal.myL.share.exception.ShareBoardException;
import com.mylocal.myL.share.model.vo.Customer;
import com.mylocal.myL.share.model.vo.Reply;
import com.mylocal.myL.share.model.vo.ShareBoard;
import com.mylocal.myL.share.service.ShareService;

@Controller
public class ShareController {
	@Autowired
	private ShareService shareService;
	
	@RequestMapping("shareInsert.do")
	public String shareInser() {
		
		return "share/shareInsert";
	}
	@RequestMapping("shareboard.do")
	public ModelAndView sharingboard(ModelAndView mv) {
		 ArrayList<ShareBoard> list = shareService.selectList();
		 
		  if(list != null) {
		         mv.addObject("list", list);
		         mv.setViewName("share/shareboard");
		      }else {
		         throw new ShareBoardException("나눔게시글 전체 조회 실패!");
		      }
		return mv;
	}
	
	
//	@RequestMapping("shareInsert.do")
//	public String shareInsert(ShareBoard sb,
//					@RequestParam(value="ir1")String content ) {
//		
//	      int result = shareService.insertBoard(sb);
//	      
//	      if(result > 0 ) { 
//	    	  System.out.println("");
//	      }else {
//	    	  throw new ShareBoardException("나눔게시글 등록 실패!");
//	      }
//	      
//		return "redirect:shareInsert.do";
//	}
	
	
	@RequestMapping("sbdetail.do")
	public ModelAndView shareDatil(ModelAndView mv, ShareBoard sbno,
									@RequestParam(name = "page") Integer page) {
		ShareBoard shareboard = null;
		shareboard = shareService.detailBoard(sbno);
		 System.out.println("shareboard 값은 가져오니?" + shareboard);
		  if(shareboard != null) {
		         mv.addObject("sb", shareboard);
		         mv.setViewName("share/shareDetail");
		         System.out.println("일로가니?" + shareboard);
		      }else {
		         throw new ShareBoardException("게시글 상세조회 실패!!");
		      }
		  return mv;
	}
	@RequestMapping("shareUpdate.do")
	public ModelAndView shareUpdate(ModelAndView mv, ShareBoard sb,
			@RequestParam("page") Integer page) {
		
		int result = shareService.updateBoard(sb); 

		if(result > 0 ) {
			mv.addObject("page",page);
			mv.setViewName("share/shareDetail");
		}else {
			throw new ShareBoardException("게시글 수정 실패");
		}
		return mv;
	}
	
//	@RequestMapping("shareDelete.do")
//	public String shareDelete(int shno) {
//		
//		ShareBoard sb = shareService.detailBoard(shno);
//		
//		int result = shareService.deleteBoard(shno);
//		
//		if(result > 0 ) {
//			
//			return "redirect:shareboard.do";	
//		}else {
//			throw new ShareBoardException("게시글 삭제 실패");
//		}
//		
//		
//	}
	
//	@RequestMapping("rList.do")
//	@ResponseBody
//	public 	String addReply(Reply r, HttpSession session ) {
//		
////		Customer loginUser = (Customer)session.getAttribute("loginUser");
////		r.setcName(loginUser.getcId());
//		
////		System.out.println(loginUser.getcId());
//		
//		
//		//테스트를 위해 임시로 데이터를 로그인세션에 넣어두자
//		Customer loginUser = new Customer(1,"홍길동","userID","pass01"
//				,"EMAIL.COM","서울시은평구","Y","01099634139",new java.util.Date());
//		
//		session.setAttribute("loginUser", loginUser);
//		r.setcName("홍길동");
//		loginUser = (Customer)session.getAttribute("loginUser");
//		
//		
//		int result = shareService.insertReply(r);
//		
//		if(result > 0 ) {
//			return "success";
//		}else {
//			throw new ShareBoardException("댓글 등록 실패!");
//		}
//	}
//	
//	@RequestMapping(value="rList.do", produces="applica52tion/json; charset=utf-8")
//	@ResponseBody
//	public String getReplyList(int sbNo, HttpServletResponse response) {
//		ArrayList<Reply> rList = shareService.selectReplyList(sbNo);
//		
//		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
//		
//		
//		return gson.toJson(rList);
//	}
//	
//	@RequestMapping(value="rUpdate.do")
//	public String replyUpdate(Reply r) {
//		
//		int result = shareService.updateReply(r);
//		
//		return "success";
//	}
//	
//	@RequestMapping(value="rDelete.do")
//	public String replyDelete(int rNo) {
//		
//		int result = shareService.deleteReply(rNo);
//
//		return "success";
//	}
	
	
}
