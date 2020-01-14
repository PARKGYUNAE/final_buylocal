package com.mylocal.myL.user.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import com.mylocal.myL.user.model.dao.UserDao;
import com.mylocal.myL.user.model.vo.BusinessInfo;
import com.mylocal.myL.user.model.vo.Customer;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	@Override
	public Customer loginCustomer(Customer c) {
		return userDao.selectCustomer(c);
	}


	@Override
	public int insertCustomer(Customer c) {
		return userDao.insertCustomer(c);
	}

	@Override
	public int insertBusinessInfo(BusinessInfo bi) {
		return userDao.insertBusinessInfo(bi);
	}

	@Override
	public int updateCustomer(Customer c) {
		return userDao.updateCustomer(c);
	}
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
	@Override
	public int checkIdDup(String cId) {
		return userDao.checkIdDup(cId);
	}
//
//	@Override
//	public int checkSidDup(String sId) {
//		return userDao.checkSidDup(sId);
//	}

}
