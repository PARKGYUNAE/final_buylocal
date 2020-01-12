package com.mylocal.myL.share.model.vo;

import java.util.Date;

public class Customer {
	private int cNo;
	private String cName;
	private String cId;
	private String cPwd;
	private String cEmail;
	private String cAddress;
	private String cStatus;
	private String cPhone;
	private Date cEnrolldate;

	public Customer() {}

	public Customer(int cNo, String cName, String cId, String cPwd, String cEmail, String cAddress, String cStatus,
			String cPhone, Date cEnrolldate) {
		super();
		this.cNo = cNo;
		this.cName = cName;
		this.cId = cId;
		this.cPwd = cPwd;
		this.cEmail = cEmail;
		this.cAddress = cAddress;
		this.cStatus = cStatus;
		this.cPhone = cPhone;
		this.cEnrolldate = cEnrolldate;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}

	public String getcPwd() {
		return cPwd;
	}

	public void setcPwd(String cPwd) {
		this.cPwd = cPwd;
	}

	public String getcEmail() {
		return cEmail;
	}

	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}

	public String getcAddress() {
		return cAddress;
	}

	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}

	public String getcStatus() {
		return cStatus;
	}

	public void setcStatus(String cStatus) {
		this.cStatus = cStatus;
	}

	public String getcPhone() {
		return cPhone;
	}

	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}

	public Date getcEnrolldate() {
		return cEnrolldate;
	}

	public void setcEnrolldate(Date cEnrolldate) {
		this.cEnrolldate = cEnrolldate;
	}

	@Override
	public String toString() {
		return "Customer [cNo=" + cNo + ", cName=" + cName + ", cId=" + cId + ", cPwd=" + cPwd + ", cEmail=" + cEmail
				+ ", cAddress=" + cAddress + ", cStatus=" + cStatus + ", cPhone=" + cPhone + ", cEnrolldate="
				+ cEnrolldate + "]";
	}
}
