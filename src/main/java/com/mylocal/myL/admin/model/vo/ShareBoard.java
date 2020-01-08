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
}
