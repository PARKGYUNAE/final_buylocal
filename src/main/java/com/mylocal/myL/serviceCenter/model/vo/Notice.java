package com.mylocal.myL.serviceCenter.model.vo;

import java.sql.Date;

public class Notice {
	private int nId; // 공지사항번호
	private String nTitle; // 글제목
	private String nContent; // 글내용
	private Date nDate; // 작성일
	
	public Notice() {}
	
	public Notice(int nId, String nTitle, String nContent, Date nDate) {
		super();
		this.nId = nId;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nDate = nDate;
	}

	public int getnId() {
		return nId;
	}

	public void setnId(int nId) {
		this.nId = nId;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public Date getnDate() {
		return nDate;
	}

	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}

	@Override
	public String toString() {
		return "Notice [nId=" + nId + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nDate=" + nDate + "]";
	}
	
	
	
	
	
	
}
