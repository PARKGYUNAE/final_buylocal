package com.mylocal.myL.user.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import com.mylocal.myL.user.model.dao.UserDao;
import com.mylocal.myL.user.model.vo.Customer;
import com.mylocal.myL.user.model.vo.Seller;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	@Override
	public Customer loginCustomer(Customer c) {
		return userDao.selectCustomer(c);
	}
//
//	@Override
//	public Seller loginSeller(Seller s) {
//		return userDao.selectSeller(s);
//	}
//
	@Override
	public int insertCustomer(Customer c) {
		return userDao.insertCustomer(c);
	}
//
//	@Override
//	public int insertSeller(Seller s) {
//		return userDao.insertSeller(s);
//	}
//
//	@Override
//	public int updateCustomer(Customer c) {
//		return userDao.updateCustomer(c);
//	}
//
//	@Override
//	public int updateSeller(Seller s) {
//		return userDao.updateSeller(s);
//	}
//
//	@Override
//	public int deleteCustomer(String cId) {
//		return userDao.deleteCustomer(cId);
//	}
//
//	@Override
//	public int deleteSeller(String sId) {
//		return userDao.deleteSeller(sId);
//	}
//
//	@Override
//	public int checkCidDup(String cId) {
//		return userDao.checkCidDup(cId);
//	}
//
//	@Override
//	public int checkSidDup(String sId) {
//		return userDao.checkSidDup(sId);
//	}

}
