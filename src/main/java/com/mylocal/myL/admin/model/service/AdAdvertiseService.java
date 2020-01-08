package com.mylocal.myL.admin.model.service;

import java.util.ArrayList;

import com.mylocal.myL.admin.model.vo.Advertise;
import com.mylocal.myL.admin.model.vo.Customer;
import com.mylocal.myL.admin.model.vo.HotDeal;
import com.mylocal.myL.admin.model.vo.QnA;
import com.mylocal.myL.admin.model.vo.Report;
import com.mylocal.myL.admin.model.vo.Seller;
import com.mylocal.myL.admin.model.vo.ShareBoard;
import com.mylocal.myL.admin.model.vo.Ttang;

public interface AdAdvertiseService {

	// 광고 목록 보여주기 list뷰
		ArrayList<Advertise> AdvertiseSelectList();

		
	// 광고 업데이트(보여주게 하기)
		
		int UpdateAdvertise(Advertise ad);
		
	
	

}
