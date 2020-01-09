package com.mylocal.myL.shop.ttang.model.service;

import java.util.ArrayList;

import com.mylocal.myL.shop.ttang.model.vo.*;

public interface ttangService {
	
	ArrayList<Product> selectList (int currentPage);
}
