package com.mylocal.myL.admin.model.vo;

import java.sql.Date;

// 회원 거래내역 조인할것
public class Customer {
	private int cNo;
	private int cName;
	private int cId;
	private int cPwd;
	private int cEmail;
	private int cAddress;
	private int cPhone;
	private Date cEnrollDate;
	private int cStatus;

	private int p_no; // 상품이름과 조인
	
	private String p_name; // 상품 이름 가져올것
	
	private int d_date; // 거래일자 가져올것
	private int d_price; // 가격 가져올것
	private String d_rev_check; // 수령 여부 가져올것
	
	

}
