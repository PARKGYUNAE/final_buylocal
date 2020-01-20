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
	
	
	/*// 이벤트&광고 페이지 연결
	@RequestMapping("advertisementForm.do")
	public String advertisement() {
		return "application/advertisementForm";
	}*/
	
	
	// 상품 등록 페이지 연결
	@RequestMapping("insertProductForm.do")
	public String insertProductForm() {
		return "application/insertProductForm";
	}
	
	
	// 상품등록 폼 제출하기
	@RequestMapping("insertProduct.do")
	public String insertProduct(Product p, HttpServletRequest request, 
								@RequestParam(value="pThumb", required=false) MultipartFile tFile,
								@RequestParam(value="pInfoImage", required=false) MultipartFile iFile) {
		
		// 썸네일 (nullPointerException)
		/*if(!tFile.getOriginalFilename().equals("")) {
			String pThumb = saveThumbFile(tFile, request);
			
			System.out.println("pThumb="+pThumb);
			
			if(pThumb != null) {
				p.setpOriginalT(tFile.getOriginalFilename());
				p.setpThumb(pThumb);
			}
		}*/
		
		// 상품정보
		/*if(!iFile.getOriginalFilename().equals("")) {
			String pInfoImage = saveProductInfo(iFile, request);
			
			System.out.println("pInfoImage="+pInfoImage);
			
			if(pInfoImage != null) {
				p.setpOriginalInfoI(iFile.getOriginalFilename());
				p.setpInfoImage(pInfoImage);
			}
		}*/
		
		int result = appService.insertProduct(p);
		System.out.println("result=" + result);
		
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
	public String saveThumbFile(MultipartFile tFile, HttpServletRequest request) {
		String thumbRoot = request.getSession().getServletContext().getRealPath("resources");
		
		String saveThumbPath = thumbRoot + "\\pThumb";
		
		File thumbFolder = new File(saveThumbPath);
		
		if(!thumbFolder.exists()) {
			thumbFolder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String pOriginalThumb = tFile.getOriginalFilename();
		String pThumb = sdf.format(new java.util.Date()) + "."
		+ pOriginalThumb.substring(pOriginalThumb.lastIndexOf(".") + 1);
		
		String pThumbPath = thumbFolder + "\\" + pThumb;
		System.out.println("pThumbPath=" + pThumbPath);
		
		try {
			tFile.transferTo(new File(pThumbPath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		return pThumb;
	}

	
	// 상품정보 - SaveFile
	public String saveProductInfo(MultipartFile iFile, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\productInfo";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String pOriginalInfoImage = iFile.getOriginalFilename();
		String pInfoImage = sdf.format(new java.util.Date()) + "."
		+ pOriginalInfoImage.substring(pOriginalInfoImage.lastIndexOf(".") + 1);
		
		String renamePath = folder + "\\" + pOriginalInfoImage;
		System.out.println("renamePath=" + renamePath);
		
		try {
			iFile.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		return pInfoImage;
	}	
}
