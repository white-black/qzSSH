package com.lian.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.lian.dao.TbCompanyDao;
import com.lian.dao.TbUserDao;
import com.lian.entity.TbCompany;
import com.lian.entity.TbUser;
import com.opensymphony.xwork2.ActionSupport;

@Controller("login")
public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private TbUser user;
	private TbUserDao ud;
	private TbCompany company;
	private TbCompanyDao cd;
	private String btn_val;
	private String username;
	private String password;
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
	public String getBtn_val() {
		return btn_val;
	}
	public void setBtn_val(String btn_val) {
		this.btn_val = btn_val;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(username.equals("admin") && password.equals("admin")){
			return "admin";
		}else{
			if(btn_val.equals("用户登录")){
				user = new TbUser();
				user.setUName(username);
				user.setUPassword(password);
				String hql = "from TbUser";
				List<TbUser> userFromDBs = ud.findByHQL(hql);
				for(TbUser tbuser : userFromDBs){
					if(tbuser.getUName().equals(user.getUName()) && tbuser.getUPassword().equals(user.getUPassword())){
						session.setAttribute("user", tbuser);
						return SUCCESS;
					}
				} 			
			}else if(btn_val.equals("企业登录")){
				company = new TbCompany();
				company.setCName(username);
				company.setCPassword(password);
				String hql = "from TbCompany";
				List<TbCompany> companyLists = cd.findByHQL(hql);
				for(TbCompany comp : companyLists){
					if(comp.getCName().equals(company.getCName())&& comp.getCPassword().equals(company.getCPassword())){
						session.setAttribute("company", comp);
						return SUCCESS;
					}
				}
			}
		}
		return INPUT;
	}
	public String quit(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null){
			session.setAttribute("user", null);
			return SUCCESS;
		}
		if(session.getAttribute("company") != null){
			session.setAttribute("company", null);
			return SUCCESS;
		}
		return INPUT;
	}
}
