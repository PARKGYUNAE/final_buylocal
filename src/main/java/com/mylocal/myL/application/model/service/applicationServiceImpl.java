package com.mylocal.myL.application.model.service;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mylocal.myL.application.model.dao.applicationDao;
import com.mylocal.myL.application.model.vo.Product;

@Service("applicationService")
public class applicationServiceImpl implements applicationService{
	@Autowired
	applicationDao appDao;

	
	// 등록
	@Override
	public int insertProduct(Product p) {
		return appDao.insertProduct(p);
	}
	
	
}
