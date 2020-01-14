package com.mylocal.myL.shop.hotDeal.model.service;

import java.util.ArrayList;

import com.mylocal.myL.common.Cart;
import com.mylocal.myL.common.Favorite;
import com.mylocal.myL.shop.hotDeal.model.vo.Product;
import com.mylocal.myL.shop.hotDeal.model.vo.Review;

public interface hotDealService {

	ArrayList<Product> selectList(int currentPage);

	Product selectBoard(int pNo, boolean flag);

	ArrayList<Review> selectReviewList(int pNo);

	ArrayList<Cart> getMyCart(int cNo);

	int AddCart(Cart c);

	int buyProduct(int cNo);

	int AddWishList(Favorite f);

	ArrayList<Favorite> getMyWishList(int cNo);

	int AddReview(Review r);

	int updateBoard(Product p);

	
}
