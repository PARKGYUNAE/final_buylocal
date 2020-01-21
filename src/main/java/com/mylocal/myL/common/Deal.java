package com.mylocal.myL.common;

import java.sql.Date;

public class Deal {
	private int dNo;
	private Date dDate;
	private int pNo;
	private String pName;
	private int cNo;
	private String cName;
	private int dPrice;
	private int dAmount;
	private String dMethod;
	private String dReceiver;
	private Date dRevDate;
	private String dRevCheck;
	private String dStatus;
	private String dUid;
	
	public Deal() {}

	
	

	public Deal(int dNo, Date dDate, int pNo, String pName, int cNo, String cName, int dPrice, int dAmount,
			String dMethod, String dReceiver, Date dRevDate, String dRevCheck, String dStatus, String dUid) {
		super();
		this.dNo = dNo;
		this.dDate = dDate;
		this.pNo = pNo;
		this.pName = pName;
		this.cNo = cNo;
		this.cName = cName;
		this.dPrice = dPrice;
		this.dAmount = dAmount;
		this.dMethod = dMethod;
		this.dReceiver = dReceiver;
		this.dRevDate = dRevDate;
		this.dRevCheck = dRevCheck;
		this.dStatus = dStatus;
		this.dUid = dUid;
	}

	



	public String getdUid() {
		return dUid;
	}




	public void setdUid(String dUid) {
		this.dUid = dUid;
	}




	public String getpName() {
		return pName;
	}




	public void setpName(String pName) {
		this.pName = pName;
	}




	public String getcName() {
		return cName;
	}




	public void setcName(String cName) {
		this.cName = cName;
	}




	public Deal(int dNo, int pNo, String pName, int cNo, String cName, int dPrice, int dAmount, String dMethod,
			String dReceiver, Date dRevDate, String dRevCheck) {
		super();
		this.dNo = dNo;
		this.pNo = pNo;
		this.pName = pName;
		this.cNo = cNo;
		this.cName = cName;
		this.dPrice = dPrice;
		this.dAmount = dAmount;
		this.dMethod = dMethod;
		this.dReceiver = dReceiver;
		this.dRevDate = dRevDate;
		this.dRevCheck = dRevCheck;
	}



	public int getdNo() {
		return dNo;
	}

	public void setdNo(int dNo) {
		this.dNo = dNo;
	}

	public Date getdDate() {
		return dDate;
	}

	public void setdDate(Date dDate) {
		this.dDate = dDate;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public int getdPrice() {
		return dPrice;
	}

	public void setdPrice(int dPrice) {
		this.dPrice = dPrice;
	}

	public int getdAmount() {
		return dAmount;
	}

	public void setdAmount(int dAmount) {
		this.dAmount = dAmount;
	}

	public String getdMethod() {
		return dMethod;
	}

	public void setdMethod(String dMethod) {
		this.dMethod = dMethod;
	}

	public String getdReceiver() {
		return dReceiver;
	}

	public void setdReceiver(String dReceiver) {
		this.dReceiver = dReceiver;
	}

	public Date getdRevDate() {
		return dRevDate;
	}

	public void setdRevDate(Date dRevDate) {
		this.dRevDate = dRevDate;
	}

	public String getdRevCheck() {
		return dRevCheck;
	}

	public void setdRevCheck(String dRevCheck) {
		this.dRevCheck = dRevCheck;
	}

	public String getdStatus() {
		return dStatus;
	}

	public void setdStatus(String dStatus) {
		this.dStatus = dStatus;
	}




	@Override
	public String toString() {
		return "Deal [dNo=" + dNo + ", dDate=" + dDate + ", pNo=" + pNo + ", pName=" + pName + ", cNo=" + cNo
				+ ", cName=" + cName + ", dPrice=" + dPrice + ", dAmount=" + dAmount + ", dMethod=" + dMethod
				+ ", dReceiver=" + dReceiver + ", dRevDate=" + dRevDate + ", dRevCheck=" + dRevCheck + ", dStatus="
				+ dStatus + ", dUid=" + dUid + "]";
	}

	
	
	
}
