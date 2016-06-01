package com.lian.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.lian.dao.TbCompanyDao;
import com.lian.dao.TbNewsDao;
import com.lian.dao.TbUserDao;
import com.lian.entity.TbCompany;
import com.lian.entity.TbNews;
import com.lian.entity.TbUser;
import com.opensymphony.xwork2.ActionSupport;
@Controller("admin")
public class AdminAction extends ActionSupport{
	private int a_key;
	private int id;
	private TbUser user;
	private List<TbUser> users;
	private TbUserDao ud;
	private TbCompany company;
	private List<TbCompany> companys;
	private TbCompanyDao cd;
	private TbNews news;
	private List<TbNews> newes;
	private TbNewsDao nd;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public TbUser getUser() {
		return user;
	}
	public void setUser(TbUser user) {
		this.user = user;
	}
	public TbCompany getCompany() {
		return company;
	}
	public void setCompany(TbCompany company) {
		this.company = company;
	}
	public int getA_key() {
		return a_key;
	}
	public void setA_key(int a_key) {
		this.a_key = a_key;
	}
	public List<TbUser> getUsers() {
		return users;
	}
	public void setUsers(List<TbUser> users) {
		this.users = users;
	}
	public TbUserDao getUd() {
		return ud;
	}
	@Resource(name="TbUserDao")
	public void setUd(TbUserDao ud) {
		this.ud = ud;
	}
	public List<TbCompany> getCompanys() {
		return companys;
	}
	public void setCompanys(List<TbCompany> companys) {
		this.companys = companys;
	}
	public TbCompanyDao getCd() {
		return cd;
	}
	@Resource(name="TbCompanyDao")
	public void setCd(TbCompanyDao cd) {
		this.cd = cd;
	}
	public TbNews getNews() {
		return news;
	}
	public void setNews(TbNews news) {
		this.news = news;
	}
	public List<TbNews> getNewes() {
		return newes;
	}
	public void setNewes(List<TbNews> newes) {
		this.newes = newes;
	}
	public TbNewsDao getNd() {
		return nd;
	}
	@Resource(name="TbNewsDao")
	public void setNd(TbNewsDao nd) {
		this.nd = nd;
	}
	public String execute(){
		return SUCCESS;
	}
	public String getAllUsers(){ 
		String hql = "from TbUser";
		users = ud.findByHQL(hql);
		return SUCCESS;
	}
	public String delUser(){
		ud.delete(id);
		return SUCCESS;
	}
	public String getAllCompanys(){
		String hql = "from TbCompany";
		companys = cd.findByHQL(hql);
		return SUCCESS;
	}
	public String delCompany(){
		cd.delete(id);
		return SUCCESS;
	}
	public String saveNews(){
		news.setNeDate(new java.util.Date());
		nd.save(news);
		return SUCCESS;
	}
	public String getAllNewes(){
		String hql = "from TbNews";
		newes = nd.findByHQL(hql);
		return SUCCESS;
	}
	public String delNews(){
		nd.delete(id);
		return SUCCESS;
	}
}
