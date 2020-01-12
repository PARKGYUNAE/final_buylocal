package com.mylocal.myL.share.model.vo;

import java.util.Date;

public class Reply {
	private int rNo;
	private int sbNo;
	private String cName;
	private Date rCreateDate;
	private String rContent;
	private String rStatus;
	private int rLevel;

	public Reply() {}

	public Reply(int rNo, int sbNo, String cName, Date rCreateDate, String rContent, String rStatus, int rLevel) {
		super();
		this.rNo = rNo;
		this.sbNo = sbNo;
		this.cName = cName;
		this.rCreateDate = rCreateDate;
		this.rContent = rContent;
		this.rStatus = rStatus;
		this.rLevel = rLevel;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public int getSbNo() {
		return sbNo;
	}

	public void setSbNo(int sbNo) {
		this.sbNo = sbNo;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public Date getrCreateDate() {
		return rCreateDate;
	}

	public void setrCreateDate(Date rCreateDate) {
		this.rCreateDate = rCreateDate;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getrStatus() {
		return rStatus;
	}

	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}

	public int getrLevel() {
		return rLevel;
	}

	public void setrLevel(int rLevel) {
		this.rLevel = rLevel;
	}

	@Override
	public String toString() {
		return "Reply [rNo=" + rNo + ", sbNo=" + sbNo + ", cName=" + cName + ", rCreateDate=" + rCreateDate
				+ ", rContent=" + rContent + ", rStatus=" + rStatus + ", rLevel=" + rLevel + "]";
	}
}
