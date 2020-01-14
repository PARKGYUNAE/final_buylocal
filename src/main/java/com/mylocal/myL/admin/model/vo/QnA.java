package com.mylocal.myL.admin.model.vo;

import java.sql.Date;

public class QnA {
	private int qNo;
	private String qTitle;
	private String qContent;
	private int cNo; // 작성자 회원번호
	private String cName; // 작성자 이름
	private String cId; // 작성자 아이디
	private Date qEnrollDate;
	private String qStatus;
	private String cEmail;
	
	public QnA() {}

	public QnA(int qNo, String qTitle, String qContent, int cNo, String cName, String cId, Date qEnrollDate,
			String qStatus, String cEmail) {
		super();
		this.qNo = qNo;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.cNo = cNo;
		this.cName = cName;
		this.cId = cId;
		this.qEnrollDate = qEnrollDate;
		this.qStatus = qStatus;
		this.cEmail = cEmail;
		
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

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
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

	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}
	
	public String getcEmail() {
		return cEmail;
	}

	public void setqStatus(String qStatus) {
		this.qStatus = qStatus;
	}

	@Override
	public String toString() {
		return "QnA [qNo=" + qNo + ", qTitle=" + qTitle + ", qContent=" + qContent + ", cNo=" + cNo + ", cName=" + cName
				+ ", cId=" + cId + ", qEnrollDate=" + qEnrollDate + ", qStatus=" + qStatus + ", cEmail=" + cEmail + "]";
	}


	
	
	
	
	
	
}
