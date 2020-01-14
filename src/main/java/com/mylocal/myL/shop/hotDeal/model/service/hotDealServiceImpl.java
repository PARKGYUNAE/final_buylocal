package com.mylocal.myL.shop.hotDeal.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylocal.myL.common.Cart;
import com.mylocal.myL.common.Favorite;
import com.mylocal.myL.common.PageInfo;
import com.mylocal.myL.common.Pagination;
import com.mylocal.myL.shop.hotDeal.model.dao.hotDealDao;

import com.mylocal.myL.shop.hotDeal.model.vo.Product;
import com.mylocal.myL.shop.hotDeal.model.vo.Review;


@Service("hotDealService")
public class hotDealServiceImpl implements hotDealService{
	@Autowired
	private hotDealDao hotdealDao;
	
	@Override

	public ArrayList<Product> selectList(int currentPage) {

		int listCount = hotdealDao.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		return hotdealDao.selectList(pi);
	}


	@Override
	public Product selectBoard(int pNo, boolean flag) {
		return hotdealDao.selectBoard(pNo);
	}

	@Override
	public ArrayList<Review> selectReviewList(int pNo) {
		return hotdealDao.seletReviewList(pNo);
	}


	@Override
	public ArrayList<Cart> getMyCart(int cNo) {
		return hotdealDao.getMyCart(cNo);
	}


	@Override
	public int AddCart(Cart c) {
		return hotdealDao.AddCart(c);
	}


	@Override
	public int buyProduct(int cNo) {
		return hotdealDao.buyProduct(cNo);
	}


	@Override
	public int AddWishList(Favorite f) {
		return hotdealDao.AddWishList(f);
	}


	@Override
	public ArrayList<Favorite> getMyWishList(int cNo) {
		return hotdealDao.getMyWishList(cNo);
	}


	@Override
	public int AddReview(Review r) {
		return hotdealDao.AddReview(r);
	}


	@Override
	public int updateBoard(Product p) {
		return hotdealDao.updateBoard(p);
	}



}