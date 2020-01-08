package com.mylocal.myL.admin.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylocal.myL.admin.model.dao.AdAdvertiseDao;
import com.mylocal.myL.admin.model.vo.Advertise;

@Service("adAdvertiseService")
public class AdAdvertiseServiceImpl implements AdAdvertiseService{
	@Autowired
	AdAdvertiseDao adAdvertiseDao;

	
	// 광고 목록 가져오기
	@Override
	public ArrayList<Advertise> AdvertiseSelectList() {
		return adAdvertiseDao.AdvertiserSelectList();
	}


	// 광고 보여주게 하기 업데이트
	@Override
	public int UpdateAdvertise(Advertise ad) {
		return adAdvertiseDao.AdvertiserUpdate(ad);
	}



	
	
}
