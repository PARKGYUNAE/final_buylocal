package com.mylocal.myL.shop.hotDeal.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylocal.myL.common.Cart;
import com.mylocal.myL.common.Favorite;
import com.mylocal.myL.common.PageInfo;

import com.mylocal.myL.shop.hotDeal.model.vo.Product;
import com.mylocal.myL.shop.hotDeal.model.vo.Review;


@Repository("hotDealDao")
public class hotDealDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("hotDealMapper.getListCount");
	}
	

	public ArrayList<Product> selectList(PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowbounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("hotDealMapper.selectList", null, rowbounds);
	}


	public Product selectBoard(int pNo) {
		return sqlSession.selectOne("hotDealMapper.selectBoard", pNo);
	}

	public ArrayList<Review> seletReviewList(int pNo) {
		return (ArrayList)sqlSession.selectList("hotDealMapper.selectReviewList", pNo);
	}


	public ArrayList<Cart> getMyCart(int cNo) {
		return (ArrayList)sqlSession.selectList("hotDealMapper.getMyCart", cNo);
	}


	public int AddCart(Cart c) {
		return sqlSession.insert("hotDealMapper.addCart", c);
	}


	public int buyProduct(int cNo) {
		//int result = sqlSession.insert("hotDealMapper.insertDeal", );
		return sqlSession.delete("hotDealMapper.buyProduct", cNo);
	}


	public int AddWishList(Favorite f) {
		// TODO Auto-generated method stub
		return sqlSession.insert("hotDealMapper.addWishList", f);
	}


	public ArrayList<Favorite> getMyWishList(int cNo) {
		return (ArrayList)sqlSession.selectList("hotDealMapper.getMyWishList", cNo);
	}


	public int AddReview(Review r) {
		return sqlSession.insert("hotDealMapper.addReview", r);
	}


	public int updateBoard(Product p) {
		return sqlSession.update("hotDealMapper.updateBoard", p);
	}



	
}
