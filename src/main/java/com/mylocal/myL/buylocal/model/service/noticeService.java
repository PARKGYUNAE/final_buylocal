package com.mylocal.myL.buylocal.model.service;

import java.util.ArrayList;

import com.mylocal.myL.buylocal.model.vo.Notice;

public interface noticeService {
	
	ArrayList<Notice> selectList (int currentPage);
}
