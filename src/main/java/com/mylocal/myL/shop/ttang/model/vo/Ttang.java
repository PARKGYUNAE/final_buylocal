package com.mylocal.myL.shop.ttang.model.vo;

import java.sql.Date;

public class Ttang {
	private int tNo; // 땡처리번호
	private String tTitle; // 글제목
	private int sNo; // 회원번호(사업자)
	private int pNo; // 상품고유번호
	private Date tDate; // 등록일자
	private String lCode; // 지역코드
	private String ttCgCode; // 카테고리코드
	private String tStatus; // 상태
	private int pOriginalPrice; // 할인전 가격
	private int pFinalPrice; // 최종 가격
	private String pName; // 상품이름
	private int pAmount; // 수량
	
	
	
/*	T_NO	NUMBER	No		1	땡처리번호
	T_TITLE	VARCHAR2(100 BYTE)	No		2	글제목
	S_NO	NUMBER	No		3	회원번호(사업자)
	P_NO	NUMBER	No		4	상품고유번호
	T_DATE	DATE	Yes		5	등록일자
	L_CODE	VARCHAR2(30 BYTE)	No		6	지역코드
	TT_CG_CODE	VARCHAR2(100 BYTE)	No		7	카테고리코드
	T_STATUS	VARCHAR2(30 BYTE)	No	"'Y'	"	8	상태*/

/*	P_NO	NUMBER	No		1	상품고유번호
	P_NAME	VARCHAR2(100 BYTE)	No		2	상품이름
	P_THUMB	VARCHAR2(100 BYTE)	Yes		3	썸네일
	P_ORIGINALPRICE	NUMBER	Yes		4	할인전가격
	P_FINALPRICE	NUMBER	No		5	최종판매가격
	P_AMOUNT	NUMBER	No		6	판매수량*/
	
	
	public Ttang() {}



	public Ttang(int tNo, String tTitle, int sNo, int pNo, Date tDate, String lCode, String ttCgCode, String tStatus,
			int pOriginalPrice, int pFinalPrice, String pName, int pAmount) {
		super();
		this.tNo = tNo;
		this.tTitle = tTitle;
		this.sNo = sNo;
		this.pNo = pNo;
		this.tDate = tDate;
		this.lCode = lCode;
		this.ttCgCode = ttCgCode;
		this.tStatus = tStatus;
		this.pOriginalPrice = pOriginalPrice;
		this.pFinalPrice = pFinalPrice;
		this.pName = pName;
		this.pAmount = pAmount;
	}



	public int gettNo() {
		return tNo;
	}



	public void settNo(int tNo) {
		this.tNo = tNo;
	}



	public String gettTitle() {
		return tTitle;
	}



	public void settTitle(String tTitle) {
		this.tTitle = tTitle;
	}



	public int getsNo() {
		return sNo;
	}



	public void setsNo(int sNo) {
		this.sNo = sNo;
	}



	public int getpNo() {
		return pNo;
	}



	public void setpNo(int pNo) {
		this.pNo = pNo;
	}



	public Date gettDate() {
		return tDate;
	}



	public void settDate(Date tDate) {
		this.tDate = tDate;
	}



	public String getlCode() {
		return lCode;
	}



	public void setlCode(String lCode) {
		this.lCode = lCode;
	}



	public String getttCgCode() {
		return ttCgCode;
	}



	public void setttCgCode(String ttCgCode) {
		this.ttCgCode = ttCgCode;
	}



	public String gettStatus() {
		return tStatus;
	}



	public void settStatus(String tStatus) {
		this.tStatus = tStatus;
	}



	public int getpOriginalPrice() {
		return pOriginalPrice;
	}



	public void setpOriginalPrice(int pOriginalPrice) {
		this.pOriginalPrice = pOriginalPrice;
	}



	public int getpFinalPrice() {
		return pFinalPrice;
	}



	public void setpFinalPrice(int pFinalPrice) {
		this.pFinalPrice = pFinalPrice;
	}



	public String getpName() {
		return pName;
	}



	public void setpName(String pName) {
		this.pName = pName;
	}



	public int getpAmount() {
		return pAmount;
	}



	public void setpAmount(int pAmount) {
		this.pAmount = pAmount;
	}



	@Override
	public String toString() {
		return "Ttang [tNo=" + tNo + ", tTitle=" + tTitle + ", sNo=" + sNo + ", pNo=" + pNo + ", tDate=" + tDate
				+ ", lCode=" + lCode + ", ttCgCode=" + ttCgCode + ", tStatus=" + tStatus + ", pOriginalPrice="
				+ pOriginalPrice + ", pFinalPrice=" + pFinalPrice + ", pName=" + pName + ", pAmount=" + pAmount + "]";
	}

	
	
	
}
