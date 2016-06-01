   package com.lian.entity;
// Generated 2016-5-2 18:35:54 by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * TbCompany generated by hbm2java
 */
public class TbCompany implements java.io.Serializable {

	private int CId;
	private String CName;
	private String CEmail;
	private String CPassword;
	private String CComname;
	private String CLocation;
	private String CRelname;
	private int CRelphone;
	private String CWeixin;
	private Date CDate;
	private Set tbCompanyResumes = new HashSet(0);
	private Set tbNewses = new HashSet(0);
	private Set tbRecruits = new HashSet(0);
	private Set tbComments = new HashSet(0);

	public TbCompany() {
	}

	public TbCompany(int CId, String CName, String CEmail, String CPassword, Date CDate) {
		this.CId = CId;
		this.CName = CName;
		this.CEmail = CEmail;
		this.CPassword = CPassword;
		this.CDate = CDate;
	}

	public TbCompany(int CId, String CName, String CEmail, String CPassword, String CComname, String CLocation,
			String CRelname, int CRelphone, String CWeixin, Date CDate, Set tbCompanyResumes, Set tbNewses,
			Set tbRecruits, Set tbComments) {
		this.CId = CId;
		this.CName = CName;
		this.CEmail = CEmail;
		this.CPassword = CPassword;
		this.CComname = CComname;
		this.CLocation = CLocation;
		this.CRelname = CRelname;
		this.CRelphone = CRelphone;
		this.CWeixin = CWeixin;
		this.CDate = CDate;
		this.tbCompanyResumes = tbCompanyResumes;
		this.tbNewses = tbNewses;
		this.tbRecruits = tbRecruits;
		this.tbComments = tbComments;
	}

	public int getCId() {
		return this.CId;
	}
	public void setCId(int CId) {
		this.CId = CId;
	}

	public String getCName() {
		return this.CName;
	}

	public void setCName(String CName) {
		this.CName = CName;
	}

	public String getCEmail() {
		return this.CEmail;
	}

	public void setCEmail(String CEmail) {
		this.CEmail = CEmail;
	}

	public String getCPassword() {
		return this.CPassword;
	}

	public void setCPassword(String CPassword) {
		this.CPassword = CPassword;
	}

	public String getCComname() {
		return this.CComname;
	}

	public void setCComname(String CComname) {
		this.CComname = CComname;
	}

	public String getCLocation() {
		return this.CLocation;
	}

	public void setCLocation(String CLocation) {
		this.CLocation = CLocation;
	}

	public String getCRelname() {
		return this.CRelname;
	}

	public void setCRelname(String CRelname) {
		this.CRelname = CRelname;
	}

	public int getCRelphone() {
		return this.CRelphone;
	}

	public void setCRelphone(int CRelphone) {
		this.CRelphone = CRelphone;
	}

	public String getCWeixin() {
		return this.CWeixin;
	}

	public void setCWeixin(String CWeixin) {
		this.CWeixin = CWeixin;
	}

	public Date getCDate() {
		return this.CDate;
	}

	public void setCDate(Date CDate) {
		this.CDate = CDate;
	}

	public Set getTbCompanyResumes() {
		return this.tbCompanyResumes;
	}

	public void setTbCompanyResumes(Set tbCompanyResumes) {
		this.tbCompanyResumes = tbCompanyResumes;
	}

	public Set getTbNewses() {
		return this.tbNewses;
	}

	public void setTbNewses(Set tbNewses) {
		this.tbNewses = tbNewses;
	}

	public Set getTbRecruits() {
		return this.tbRecruits;
	}

	public void setTbRecruits(Set tbRecruits) {
		this.tbRecruits = tbRecruits;
	}

	public Set getTbComments() {
		return this.tbComments;
	}

	public void setTbComments(Set tbComments) {
		this.tbComments = tbComments;
	}

}
