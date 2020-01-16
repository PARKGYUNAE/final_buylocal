package com.mylocal.myL.application.controller;


import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mylocal.myL.application.model.dao.applicationDao;
import com.mylocal.myL.application.model.exception.applicationException;
import com.mylocal.myL.application.model.service.applicationService;
import com.mylocal.myL.application.model.vo.Product;



/**
 * Handles requests for the application home page.
 */
@Controller
public class applicationController {
	@Autowired
	private applicationService appService;
	
	private Logger logger = LoggerFactory.getLogger(applicationController.class);
	
	// QNA 페이지 연결
	@RequestMapping("QNAform.do")
	public String QNAform() {
		return "serviceCenter/QNAform";
	}
	
	// QNA 폼 제출
	
	// FAQ 페이지 연결 (폼 아직 안만듦)
	@RequestMapping("FAQ.do")
	public String FAQ() {
		return "serviceCenter/FAQ";
	}
	
	
	// 이벤트&광고 페이지 연결
	@RequestMapping("advertisementForm.do")
	public String advertisement() {
		return "application/advertisementForm";
	}
	
	// 상품 등록 페이지 연결
	@RequestMapping("insertProductForm.do")
	public String insertProductForm() {
		return "application/insertProductForm";
	}
	
	
	// 상품등록 폼 제출하기
/*	@RequestMapping("insertProduct.do")
	public String insertProduct(Product p, HttpServletRequest request, 
								@RequestParam(value="uploadFile", required=false) MultipartFile file) {
		
		// 썸네일
		if(!file.getpOriginalThumb().equals("")) {
			String renameThumbFileName = saveThumbFile(file, request);
			
			if(renameThumbFileName != null) {
				p.setpOriginalThumb(file.getpOriginalThumb());
				p.setpThumb(renameThumbFileName);
			}
		}
		
		// 상품정보
		if(!file.getOriginalFilename().equals("")) {
			String renamePInfoFileName = saveProductInfo(file, request);
			
			if(renamePInfoFileName != null) {
				p.setpOriginalInfoImage(file.getOriginalFilename());
				p.setpInfoImage(renamePInfoFileName);
			}
		}
		
		int result = appService.insertProduct(p);
		
		if(result > 0) {
			if(logger.isDebugEnabled()) {
				logger.debug(p.getpName() + " 상품 등록 완료");
			}
			return "common/main";
		} else {
			throw new applicationException("상품 등록 실패! 다시 시도 해 주세요.");
		}
		
	}

	// 썸네일 - SaveFile
	public String saveThumbFile(MultipartFile file, HttpServletRequest request) {
		String thumbRoot = request.getSession().getServletContext().getRealPath("resources");
		
		String saveThumbPath = thumbRoot + "\\pThumb";
		
		File thumbFolder = new File(saveThumbPath);
		
		if(!thumbFolder.exists()) {
			thumbFolder.mkdirs();
		}
		
		// 공지사항의 경우 rename 없이 저장했지만
		// 게시판은 회원들이 업로드 하는 공간이므로 파일명이 겹칠 우려가 있어
		// rename 과정을 거쳐서 저장할 것이다.
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String pOriginalThumb = file.getpOriginalThumb();
		String pThumb = sdf.format(new java.util.Date()) + "."
		+ pOriginalThumb.substring(pOriginalThumb.lastIndexOf(".") + 1);
		
		String pThumbPath = thumbFolder + "\\" + pThumb;
		
		try {
			file.transferTo(new File(pThumbPath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		return pThumb;
	}

	// 상품정보 - SaveFile
	public String saveProductInfo(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\productInfo";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		// 공지사항의 경우 rename 없이 저장했지만
		// 게시판은 회원들이 업로드 하는 공간이므로 파일명이 겹칠 우려가 있어
		// rename 과정을 거쳐서 저장할 것이다.
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new java.util.Date()) + "."
		+ originFileName.substring(originFileName.lastIndexOf(".") + 1);
		
		String renamePath = folder + "\\" + renameFileName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		return renameFileName;
	}	*/
}
