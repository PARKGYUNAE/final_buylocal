package com.mylocal.myL.share.model.vo;

public class Category {
	private String sbcgCode;
	private String sbcgName;
	
	public Category() {}

	public Category(String sbcgCode, String sbcgName) {
		super();
		this.sbcgCode = sbcgCode;
		this.sbcgName = sbcgName;
	}

	public String getSbcgCode() {
		return sbcgCode;
	}

	public void setSbcgCode(String sbcgCode) {
		this.sbcgCode = sbcgCode;
	}

	public String getSbcgName() {
		return sbcgName;
	}

	public void setSbcgName(String sbcgName) {
		this.sbcgName = sbcgName;
	}

	@Override
	public String toString() {
		return "Category [sbcgCode=" + sbcgCode + ", sbcgName=" + sbcgName + "]";
	}
}
