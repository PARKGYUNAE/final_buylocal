package com.mylocal.myL.shop.product.model.vo;

import java.sql.Date;

public class Product {
	private int pNo; // 상품고유번호
	private String pName; //상품이름
	private String pThumb; //썸네일
	private int pOriginalPrice; //할인전가격
	private int pFinalPrice; //최종판매가격
	private int pAmount; //판매수량
	private String pInfoImage; //상품정보(이미지)
	private String pInfoText; //상품정보(텍스트)
	private String cgCode; //카테고리코드
	private Date pDate; // 등록일자
	private String pStatus; //상태
	private String lCode; //지역코드
	private String pOption; // 옵션
	
	public Product() {}

	public Product(int pNo, String pName, String pThumb, int pOriginalPrice, int pFinalPrice, int pAmount,
			String pInfoImage, String pInfoText, String cgCode, Date pDate, String pStatus, String lCode,
			String pOption) {
		super();
		this.pNo = pNo;
		this.pName = pName;
		this.pThumb = pThumb;
		this.pOriginalPrice = pOriginalPrice;
		this.pFinalPrice = pFinalPrice;
		this.pAmount = pAmount;
		this.pInfoImage = pInfoImage;
		this.pInfoText = pInfoText;
		this.cgCode = cgCode;
		this.pDate = pDate;
		this.pStatus = pStatus;
		this.lCode = lCode;
		this.pOption = pOption;
	}

	public Product(int pNo, String pName, String pThumb, int pOriginalPrice, int pFinalPrice, int pAmount,
			String pInfoImage, String pInfoText, String cgCode, String lCode, String pOption) {
		super();
		this.pNo = pNo;
		this.pName = pName;
		this.pThumb = pThumb;
		this.pOriginalPrice = pOriginalPrice;
		this.pFinalPrice = pFinalPrice;
		this.pAmount = pAmount;
		this.pInfoImage = pInfoImage;
		this.pInfoText = pInfoText;
		this.cgCode = cgCode;
		this.lCode = lCode;
		this.pOption = pOption;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpThumb() {
		return pThumb;
	}

	public void setpThumb(String pThumb) {
		this.pThumb = pThumb;
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

	public int getpAmount() {
		return pAmount;
	}

	public void setpAmount(int pAmount) {
		this.pAmount = pAmount;
	}

	public String getpInfoImage() {
		return pInfoImage;
	}

	public void setpInfoImage(String pInfoImage) {
		this.pInfoImage = pInfoImage;
	}

	public String getpInfoText() {
		return pInfoText;
	}

	public void setpInfoText(String pInfoText) {
		this.pInfoText = pInfoText;
	}

	public String getCgCode() {
		return cgCode;
	}

	public void setCgCode(String cgCode) {
		this.cgCode = cgCode;
	}

	public Date getpDate() {
		return pDate;
	}

	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}

	public String getpStatus() {
		return pStatus;
	}

	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}

	public String getlCode() {
		return lCode;
	}

	public void setlCode(String lCode) {
		this.lCode = lCode;
	}

	public String getpOption() {
		return pOption;
	}

	public void setpOption(String pOption) {
		this.pOption = pOption;
	}

	@Override
	public String toString() {
		return "Product [pNo=" + pNo + ", pName=" + pName + ", pThumb=" + pThumb + ", pOriginalPrice=" + pOriginalPrice
				+ ", pFinalPrice=" + pFinalPrice + ", pAmount=" + pAmount + ", pInfoImage=" + pInfoImage
				+ ", pInfoText=" + pInfoText + ", cgCode=" + cgCode + ", pDate=" + pDate + ", pStatus=" + pStatus
				+ ", lCode=" + lCode + ", pOption=" + pOption + "]";
	}
	
}
