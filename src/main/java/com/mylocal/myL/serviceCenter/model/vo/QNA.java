package com.mylocal.myL.serviceCenter.model.vo;

import java.sql.Date;

public class QNA {
	private int qNo; // qna번호
	private String qTitle; // 글제목
	private String qContent;
	private int cNo;
	private Date qEnrollDate;
	private String qStatus;
	  
	public QNA() {
		
	}

	public QNA(int qNo, String qTitle, String qContent, int cNo, Date qEnrollDate, String qStatus) {
		super();
		this.qNo = qNo;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.cNo = cNo;
		this.qEnrollDate = qEnrollDate;
		this.qStatus = qStatus;
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public Date getqEnrollDate() {
		return qEnrollDate;
	}

	public void setqEnrollDate(Date qEnrollDate) {
		this.qEnrollDate = qEnrollDate;
	}

	public String getqStatus() {
		return qStatus;
	}

	public void setqStatus(String qStatus) {
		this.qStatus = qStatus;
	}

	@Override
	public String toString() {
		return "QNA [qNo=" + qNo + ", qTitle=" + qTitle + ", qContent=" + qContent + ", cNo=" + cNo + ", qEnrollDate="
				+ qEnrollDate + ", qStatus=" + qStatus + "]";
	}
	
	
}
