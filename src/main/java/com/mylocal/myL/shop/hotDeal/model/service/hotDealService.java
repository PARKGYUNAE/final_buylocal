package com.mylocal.myL.shop.hotDeal.model.service;

import java.util.ArrayList;

import com.mylocal.myL.shop.hotDeal.model.vo.Product;
import com.mylocal.myL.shop.hotDeal.model.vo.Review;

public interface hotDealService {

	ArrayList<Product> selectList(int currentPage);

	Product selectBoard(int pNo, boolean flag);

	ArrayList<Review> selectReviewList(int pNo);
	
}
