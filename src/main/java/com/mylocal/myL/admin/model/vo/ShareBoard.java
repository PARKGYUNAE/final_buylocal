package com.mylocal.myL.admin.model.vo;

import java.sql.Date;

public class ShareBoard {
	private int sbNo;
	private String sbTitle;
	private String sbContent;
	private Date sbDate;
	private int cNo;
	private String lCode;
	private int sbView;
	private String sbCgCode;
	private String sbCgName; // 조인해서 쓸 친구
	private String cName; // 조인해서 쓸 친구
	
	public ShareBoard() {}

	public ShareBoard(int sbNo, String sbTitle, String sbContent, Date sbDate, int cNo, String lCode, int sbView,
			String sbCgCode, String sbCgName, String cName) {
		super();
		this.sbNo = sbNo;
		this.sbTitle = sbTitle;
		this.sbContent = sbContent;
		this.sbDate = sbDate;
		this.cNo = cNo;
		this.lCode = lCode;
		this.sbView = sbView;
		this.sbCgCode = sbCgCode;
		this.sbCgName = sbCgName;
		this.cName = cName;
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

	public Date getSbDate() {
		return sbDate;
	}

	public void setSbDate(Date sbDate) {
		this.sbDate = sbDate;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public String getlCode() {
		return lCode;
	}

	public void setlCode(String lCode) {
		this.lCode = lCode;
	}

	public int getSbView() {
		return sbView;
	}

	public void setSbView(int sbView) {
		this.sbView = sbView;
	}

	public String getSbCgCode() {
		return sbCgCode;
	}

	public void setSbCgCode(String sbCgCode) {
		this.sbCgCode = sbCgCode;
	}

	public String getSbCgName() {
		return sbCgName;
	}

	public void setSbCgName(String sbCgName) {
		this.sbCgName = sbCgName;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	@Override
	public String toString() {
		return "ShareBoard [sbNo=" + sbNo + ", sbTitle=" + sbTitle + ", sbContent=" + sbContent + ", sbDate=" + sbDate
				+ ", cNo=" + cNo + ", lCode=" + lCode + ", sbView=" + sbView + ", sbCgCode=" + sbCgCode + ", sbCgName="
				+ sbCgName + ", cName=" + cName + "]";
	}
	
	
}
