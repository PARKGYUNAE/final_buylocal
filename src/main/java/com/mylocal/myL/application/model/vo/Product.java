package com.mylocal.myL.application.model.vo;

import java.sql.Date;

public class Product {
	private int pNo; // 상품고유번호
	private String pName; //상품이름
	private String pThumb; //썸네일(후)
	private String pOriginalThumb; // 썸네일(전) (20.01.16. 수정)
	private int pOriginalPrice; //할인전가격
	private int pFinalPrice; //최종판매가격
	private int pAmount; //판매수량
	private String pInfoImage; //상품정보(이미지)(후)
	private String pOriginalInfoImage; // 상품정보(이미지)(전) (20.01.16. 수정)
	private String pInfoText; //상품정보(텍스트)
	private String cgName; //카테고리
	private Date pDate; // 등록일자
	private String pStatus; //상태
	private String lName; //지역
	private String bOwner; // 사업자명
	private String bShopNo; // 사업자번호 (20.01.15. 수정)
	private String bShopName; // 상호명 (20.01.15. 수정)
	private String bShopAddress; // 사업장주소 (20.01.15. 수정)
	private String cEmail; // 회원 이메일(20.01.16. 수정)
	private String cPhone; 
	private String pVolumn; // 용량/크기 (20.01.15. 수정)
	private String pProductDate; // 제조연월 (20.01.15. 수정)
	private String pTreatment; // 취급방법  (20.01.15. 수정)
	private String bPIC; // 담당자 연락처
	private String pStarRate; // 별점
	private String pOrigin; // 원산지
	private String pTitle; // 상품제목
	private String pBoard; // 상품 게시판(땡/핫딜)

	
	
	public Product() {}



	public Product(int pNo, String pName, String pThumb, String pOriginalThumb, int pOriginalPrice, int pFinalPrice,
			int pAmount, String pInfoImage, String pOriginalInfoImage, String pInfoText, String cgName, Date pDate,
			String pStatus, String lName, String bOwner, String bShopNo, String bShopName, String bShopAddress,
			String cEmail, String cPhone, String pVolumn, String pProductDate, String pTreatment, String bPIC,
			String pStarRate, String pOrigin, String pTitle, String pBoard) {
		super();
		this.pNo = pNo;
		this.pName = pName;
		this.pThumb = pThumb;
		this.pOriginalThumb = pOriginalThumb;
		this.pOriginalPrice = pOriginalPrice;
		this.pFinalPrice = pFinalPrice;
		this.pAmount = pAmount;
		this.pInfoImage = pInfoImage;
		this.pOriginalInfoImage = pOriginalInfoImage;
		this.pInfoText = pInfoText;
		this.cgName = cgName;
		this.pDate = pDate;
		this.pStatus = pStatus;
		this.lName = lName;
		this.bOwner = bOwner;
		this.bShopNo = bShopNo;
		this.bShopName = bShopName;
		this.bShopAddress = bShopAddress;
		this.cEmail = cEmail;
		this.cPhone = cPhone;
		this.pVolumn = pVolumn;
		this.pProductDate = pProductDate;
		this.pTreatment = pTreatment;
		this.bPIC = bPIC;
		this.pStarRate = pStarRate;
		this.pOrigin = pOrigin;
		this.pTitle = pTitle;
		this.pBoard = pBoard;
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



	public String getpOriginalThumb() {
		return pOriginalThumb;
	}



	public void setpOriginalThumb(String pOriginalThumb) {
		this.pOriginalThumb = pOriginalThumb;
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



	public String getpOriginalInfoImage() {
		return pOriginalInfoImage;
	}



	public void setpOriginalInfoImage(String pOriginalInfoImage) {
		this.pOriginalInfoImage = pOriginalInfoImage;
	}



	public String getpInfoText() {
		return pInfoText;
	}



	public void setpInfoText(String pInfoText) {
		this.pInfoText = pInfoText;
	}



	public String getCgName() {
		return cgName;
	}



	public void setCgName(String cgName) {
		this.cgName = cgName;
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



	public String getlName() {
		return lName;
	}



	public void setlName(String lName) {
		this.lName = lName;
	}



	public String getbOwner() {
		return bOwner;
	}



	public void setbOwner(String bOwner) {
		this.bOwner = bOwner;
	}



	public String getbShopNo() {
		return bShopNo;
	}



	public void setbShopNo(String bShopNo) {
		this.bShopNo = bShopNo;
	}



	public String getbShopName() {
		return bShopName;
	}



	public void setbShopName(String bShopName) {
		this.bShopName = bShopName;
	}



	public String getbShopAddress() {
		return bShopAddress;
	}



	public void setbShopAddress(String bShopAddress) {
		this.bShopAddress = bShopAddress;
	}



	public String getcEmail() {
		return cEmail;
	}



	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}



	public String getcPhone() {
		return cPhone;
	}



	public void setcPhone(String cPhone) {
		this.cPhone = cPhone;
	}



	public String getpVolumn() {
		return pVolumn;
	}



	public void setpVolumn(String pVolumn) {
		this.pVolumn = pVolumn;
	}



	public String getpProductDate() {
		return pProductDate;
	}



	public void setpProductDate(String pProductDate) {
		this.pProductDate = pProductDate;
	}



	public String getpTreatment() {
		return pTreatment;
	}



	public void setpTreatment(String pTreatment) {
		this.pTreatment = pTreatment;
	}



	public String getbPIC() {
		return bPIC;
	}



	public void setbPIC(String bPIC) {
		this.bPIC = bPIC;
	}



	public String getpStarRate() {
		return pStarRate;
	}



	public void setpStarRate(String pStarRate) {
		this.pStarRate = pStarRate;
	}



	public String getpOrigin() {
		return pOrigin;
	}



	public void setpOrigin(String pOrigin) {
		this.pOrigin = pOrigin;
	}



	public String getpTitle() {
		return pTitle;
	}



	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}



	public String getpBoard() {
		return pBoard;
	}



	public void setpBoard(String pBoard) {
		this.pBoard = pBoard;
	}



	@Override
	public String toString() {
		return "Product [pNo=" + pNo + ", pName=" + pName + ", pThumb=" + pThumb + ", pOriginalThumb=" + pOriginalThumb
				+ ", pOriginalPrice=" + pOriginalPrice + ", pFinalPrice=" + pFinalPrice + ", pAmount=" + pAmount
				+ ", pInfoImage=" + pInfoImage + ", pOriginalInfoImage=" + pOriginalInfoImage + ", pInfoText="
				+ pInfoText + ", cgName=" + cgName + ", pDate=" + pDate + ", pStatus=" + pStatus + ", lName=" + lName
				+ ", bOwner=" + bOwner + ", bShopNo=" + bShopNo + ", bShopName=" + bShopName + ", bShopAddress="
				+ bShopAddress + ", cEmail=" + cEmail + ", cPhone=" + cPhone + ", pVolumn=" + pVolumn
				+ ", pProductDate=" + pProductDate + ", pTreatment=" + pTreatment + ", bPIC=" + bPIC + ", pStarRate="
				+ pStarRate + ", pOrigin=" + pOrigin + ", pTitle=" + pTitle + ", pBoard=" + pBoard + "]";
	}


	







	





	
	
}
