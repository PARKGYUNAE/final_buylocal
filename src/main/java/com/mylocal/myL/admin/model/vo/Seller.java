package com.mylocal.myL.admin.model.vo;

import java.sql.Date;

public class Seller {
	private int sNo;
	private int sName;
	private int sId;
	private int sPwd;
	private int sEmail;
	private int sAddress;
	private int sPermit;
	private int sStatus;
	private int sShopName;
	private int sShopNo;
	private int sClass;
	private int sDetailClass;
	private int sOwner;
	private int sPhone;
	private int sPic;
	private Date sEnrollDate;
	private int sShopAddress;


	public Seller() {}


	public Seller(int sNo, int sName, int sId, int sPwd, int sEmail, int sAddress, int sPermit, int sStatus,
			int sShopName, int sShopNo, int sClass, int sDetailClass, int sOwner, int sPhone, int sPic,
			Date sEnrollDate, int sShopAddress) {
		super();
		this.sNo = sNo;
		this.sName = sName;
		this.sId = sId;
		this.sPwd = sPwd;
		this.sEmail = sEmail;
		this.sAddress = sAddress;
		this.sPermit = sPermit;
		this.sStatus = sStatus;
		this.sShopName = sShopName;
		this.sShopNo = sShopNo;
		this.sClass = sClass;
		this.sDetailClass = sDetailClass;
		this.sOwner = sOwner;
		this.sPhone = sPhone;
		this.sPic = sPic;
		this.sEnrollDate = sEnrollDate;
		this.sShopAddress = sShopAddress;
	}


	public int getsNo() {
		return sNo;
	}


	public void setsNo(int sNo) {
		this.sNo = sNo;
	}


	public int getsName() {
		return sName;
	}


	public void setsName(int sName) {
		this.sName = sName;
	}


	public int getsId() {
		return sId;
	}


	public void setsId(int sId) {
		this.sId = sId;
	}


	public int getsPwd() {
		return sPwd;
	}


	public void setsPwd(int sPwd) {
		this.sPwd = sPwd;
	}


	public int getsEmail() {
		return sEmail;
	}


	public void setsEmail(int sEmail) {
		this.sEmail = sEmail;
	}


	public int getsAddress() {
		return sAddress;
	}


	public void setsAddress(int sAddress) {
		this.sAddress = sAddress;
	}


	public int getsPermit() {
		return sPermit;
	}


	public void setsPermit(int sPermit) {
		this.sPermit = sPermit;
	}


	public int getsStatus() {
		return sStatus;
	}


	public void setsStatus(int sStatus) {
		this.sStatus = sStatus;
	}


	public int getsShopName() {
		return sShopName;
	}


	public void setsShopName(int sShopName) {
		this.sShopName = sShopName;
	}


	public int getsShopNo() {
		return sShopNo;
	}


	public void setsShopNo(int sShopNo) {
		this.sShopNo = sShopNo;
	}


	public int getsClass() {
		return sClass;
	}


	public void setsClass(int sClass) {
		this.sClass = sClass;
	}


	public int getsDetailClass() {
		return sDetailClass;
	}


	public void setsDetailClass(int sDetailClass) {
		this.sDetailClass = sDetailClass;
	}


	public int getsOwner() {
		return sOwner;
	}


	public void setsOwner(int sOwner) {
		this.sOwner = sOwner;
	}


	public int getsPhone() {
		return sPhone;
	}


	public void setsPhone(int sPhone) {
		this.sPhone = sPhone;
	}


	public int getsPic() {
		return sPic;
	}


	public void setsPic(int sPic) {
		this.sPic = sPic;
	}


	public Date getsEnrollDate() {
		return sEnrollDate;
	}


	public void setsEnrollDate(Date sEnrollDate) {
		this.sEnrollDate = sEnrollDate;
	}


	public int getsShopAddress() {
		return sShopAddress;
	}


	public void setsShopAddress(int sShopAddress) {
		this.sShopAddress = sShopAddress;
	}


	@Override
	public String toString() {
		return "Seller [sNo=" + sNo + ", sName=" + sName + ", sId=" + sId + ", sPwd=" + sPwd + ", sEmail=" + sEmail
				+ ", sAddress=" + sAddress + ", sPermit=" + sPermit + ", sStatus=" + sStatus + ", sShopName="
				+ sShopName + ", sShopNo=" + sShopNo + ", sClass=" + sClass + ", sDetailClass=" + sDetailClass
				+ ", sOwner=" + sOwner + ", sPhone=" + sPhone + ", sPic=" + sPic + ", sEnrollDate=" + sEnrollDate
				+ ", sShopAddress=" + sShopAddress + "]";
	}


	
	
	

}
