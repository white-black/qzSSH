package com.lian.entity;
// Generated 2016-5-2 18:35:54 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * TbComment generated by hbm2java
 */
public class TbComment implements java.io.Serializable {

	private int ctId;
	private TbCompany tbCompany;
	private TbUser tbUser;
	private String ctContent;
	private Date ctDate;

	public TbComment() {
	}

	public TbComment(int ctId, String ctContent, Date ctDate) {
		this.ctId = ctId;
		this.ctContent = ctContent;
		this.ctDate = ctDate;
	}

	public TbComment(int ctId, TbCompany tbCompany, TbUser tbUser, String ctContent, Date ctDate) {
		this.ctId = ctId;
		this.tbCompany = tbCompany;
		this.tbUser = tbUser;
		this.ctContent = ctContent;
		this.ctDate = ctDate;
	}

	public int getCtId() {
		return this.ctId;
	}

	public void setCtId(int ctId) {
		this.ctId = ctId;
	}

	public TbCompany getTbCompany() {
		return this.tbCompany;
	}

	public void setTbCompany(TbCompany tbCompany) {
		this.tbCompany = tbCompany;
	}

	public TbUser getTbUser() {
		return this.tbUser;
	}

	public void setTbUser(TbUser tbUser) {
		this.tbUser = tbUser;
	}

	public String getCtContent() {
		return this.ctContent;
	}

	public void setCtContent(String ctContent) {
		this.ctContent = ctContent;
	}

	public Date getCtDate() {
		return this.ctDate;
	}

	public void setCtDate(Date ctDate) {
		this.ctDate = ctDate;
	}

}
