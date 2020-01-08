package com.mylocal.myL.share.model.vo;

import java.util.Date;

public class ShareBoard {
	
	private int sbNo;
	private String sbTitle;
	private String sbContent;
	private String sbDate;
	private String sbStatus;
	private String cName;
	private String lName;
	private int sbView;
	private String sbcgName;
	
	public ShareBoard() {}

	public ShareBoard(int sbNo, String sbTitle, String sbContent, String sbDate, String sbStatus, String cName,
			String lName, int sbView, String sbcgName) {
		super();
		this.sbNo = sbNo;
		this.sbTitle = sbTitle;
		this.sbContent = sbContent;
		this.sbDate = sbDate;
		this.sbStatus = sbStatus;
		this.cName = cName;
		this.lName = lName;
		this.sbView = sbView;
		this.sbcgName = sbcgName;
	}

	public int getSbNo() {
		return sbNo;
	}

	public void setSbNo(int sbNo) {
		this.sbNo = sbNo;
	}

	public String getSbTitle() {
		return sbTitle;
	}

	public void setSbTitle(String sbTitle) {
		this.sbTitle = sbTitle;
	}

	public String getSbContent() {
		return sbContent;
	}

	public void setSbContent(String sbContent) {
		this.sbContent = sbContent;
	}

	public String getSbDate() {
		return sbDate;
	}

	public void setSbDate(String sbDate) {
		this.sbDate = sbDate;
	}

	public String getSbStatus() {
		return sbStatus;
	}

	public void setSbStatus(String sbStatus) {
		this.sbStatus = sbStatus;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public int getSbView() {
		return sbView;
	}

	public void setSbView(int sbView) {
		this.sbView = sbView;
	}

	public String getSbcgName() {
		return sbcgName;
	}

	public void setSbcgName(String sbcgName) {
		this.sbcgName = sbcgName;
	}

	@Override
	public String toString() {
		return "ShareBoard [sbNo=" + sbNo + ", sbTitle=" + sbTitle + ", sbContent=" + sbContent + ", sbDate=" + sbDate
				+ ", sbStatus=" + sbStatus + ", cName=" + cName + ", lName=" + lName + ", sbView=" + sbView
				+ ", sbcgName=" + sbcgName + "]";
	}
}
