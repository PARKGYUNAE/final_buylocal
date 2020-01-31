package com.mylocal.myL.common;

public class Cart {
	private int cartNo;
	private int cNo;
	private int pNo;
	private String pName;
	private int quantity;
	private int pFinalPrice;
	private String pInfoText;
	
	public Cart() {}

	public Cart(int cartNo, int cNo, int pNo, String pName, int quantity, int pFinalPrice, String pInfoText) {
		super();
		this.cartNo = cartNo;
		this.cNo = cNo;
		this.pNo = pNo;
		this.pName = pName;
		this.quantity = quantity;
		this.pFinalPrice = pFinalPrice;
		this.pInfoText = pInfoText;
	}

	public Cart(String pName, int quantity, int pFinalPrice, String pInfoText) {
		super();
		this.pName = pName;
		this.quantity = quantity;
		this.pFinalPrice = pFinalPrice;
		this.pInfoText = pInfoText;
	}
	

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public String getpInfoText() {
		return pInfoText;
	}

	public void setpInfoText(String pInfoText) {
		this.pInfoText = pInfoText;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getpFinalPrice() {
		return pFinalPrice;
	}

	public void setpFinalPrice(int pFinalPrice) {
		this.pFinalPrice = pFinalPrice;
	}

	@Override
	public String toString() {
		return "Cart [cNo=" + cNo + ", pNo=" + pNo + ", pName=" + pName + ", quantity=" + quantity + ", pFinalPrice="
				+ pFinalPrice + "]";
	}

	
	
	
}
