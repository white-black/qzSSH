package com.lian.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.lian.dao.TbCompanyDao;
import com.lian.dao.TbUserDao;
import com.lian.entity.TbCompany;
import com.lian.entity.TbUser;
import com.opensymphony.xwork2.ActionSupport;

@Controller("register")
public class RegisterAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String username;
	private String email;
	private String password;
	private String btn_val;
	private TbUser user;
	private TbCompanyDao cd;
	private TbCompany company;
	private TbUserDao ud;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBtn_val() {
		return btn_val;
	}
	public void setBtn_val(String btn_val) {
		this.btn_val = btn_val;
	}
	public TbCompany getCompany() {
		return company;
	}
	public void setCompany(TbCompany company) {
		this.company = company;
	}
	public TbCompanyDao getCd() {
		return cd;
	}
	@Resource(name="TbCompanyDao")
	public void setCd(TbCompanyDao cd) {
		this.cd = cd;
	}
	public TbUser getUser() {
		return user;
	}
	public void setUser(TbUser user) {
		this.user = user;
	}
	public TbUserDao getUd() {
		return ud;
	}
	@Resource(name="TbUserDao")
	public void setUd(TbUserDao ud) {
		this.ud = ud;
	}
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("register_flag", 0);
		if(btn_val.equals("学生注册")){
			String hql = "from TbUser";
			List<TbUser> userFromDBs = ud.findByHQL(hql);
			for(TbUser tbuser : userFromDBs){
				if(username.equals(tbuser.getUName()) ){
					request.setAttribute("register_flag", 1);
					return INPUT;
				}
			}
			user = new TbUser();
			user.setUName(username);
			user.setUEmail(email);
			user.setUPassword(password);
			user.setUDate(new java.util.Date());
			user.setUType(1);
			ud.save(user);
			return SUCCESS;
		}else if(btn_val.equals("企业注册")){
			String hql = "from TbCompany";
			List<TbCompany> userFromDBs = cd.findByHQL(hql);
			for(TbCompany tbuser : userFromDBs){
				if(username.equals(tbuser.getCName())){
					request.setAttribute("register_flag", 1);
					return INPUT;
				}
			}
			company = new TbCompany();
			company.setCName(username);
			company.setCEmail(email);
			company.setCPassword(password);
			company.setCDate(new java.util.Date());
			cd.save(company);
			return SUCCESS;
		}
		return SUCCESS;
	}	
}
