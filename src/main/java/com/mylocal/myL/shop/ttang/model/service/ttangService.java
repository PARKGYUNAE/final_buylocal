package com.mylocal.myL.shop.ttang.model.service;

import java.util.ArrayList;

import com.mylocal.myL.shop.ttang.model.vo.Ttang;

public interface ttangService {
	
	ArrayList<Ttang> selectList (int currentPage);
}
