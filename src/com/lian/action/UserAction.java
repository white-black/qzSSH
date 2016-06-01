package com.lian.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.lian.dao.TbResumeDao;
import com.lian.dao.TbUserDao;
import com.lian.dao.TbUserRecruitDao;
import com.lian.entity.TbResume;
import com.lian.entity.TbUser;
import com.lian.entity.TbUserRecruit;
import com.opensymphony.xwork2.ActionSupport;
@Controller("user")
public class UserAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int id;
	private int a_key;
	private TbUser user;
	private TbUserDao ud;
	private TbResume resume;
	private List<TbResume> resumes;
	private TbResumeDao rd;
	private TbUserRecruit userRecruit;
	private TbUserRecruitDao urd;
	private List<TbUserRecruit> userRecruits;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getA_key() {
		return a_key;
	}
	public void setA_key(int a_key) {
		this.a_key = a_key;
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
	public TbResume getResume() {
		return resume;
	}
	public void setResume(TbResume resume) {
		this.resume = resume;
	}
	public List<TbResume> getResumes() {
		return resumes;
	}
	public void setResumes(List<TbResume> resumes) {
		this.resumes = resumes;
	}
	public TbResumeDao getRd() {
		return rd;
	}
	@Resource(name="TbResumeDao")
	public void setRd(TbResumeDao rd) {
		this.rd = rd;
	}
	@Resource(name="TbUserDao")
	public void setUd(TbUserDao ud) {
		this.ud = ud;
	}
	public String execute(){
		return SUCCESS;
	}
	public String userDetailed(){
		user = ud.findById(id);
		return SUCCESS;
	}
	public TbUserRecruit getUserRecruit() {
		return userRecruit;
	}
	public void setUserRecruit(TbUserRecruit userRecruit) {
		this.userRecruit = userRecruit;
	}
	public TbUserRecruitDao getUrd() {
		return urd;
	}
	@Resource(name="TbUserRecruitDao")
	public void setUrd(TbUserRecruitDao urd) {
		this.urd = urd;
	}
	public List<TbUserRecruit> getUserRecruits() {
		return userRecruits;
	}
	public void setUserRecruits(List<TbUserRecruit> userRecruits) {
		this.userRecruits = userRecruits;
	}
	public String alterPassword(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbUser alUser = (TbUser) session.getAttribute("user");
		alUser.setUPassword(user.getUPassword());
		ud.update(alUser);
		session.setAttribute("user", null);
		return SUCCESS;
	}
	public String getUserMessage(){
		user = ud.findById(id);
		return SUCCESS;
	}
	public String alterUserMessage(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbUser oldUser = (TbUser) session.getAttribute("user");
		oldUser.setURelname(user.getURelname());
		oldUser.setUSex(user.getUSex());
		oldUser.setUSchool(user.getUSchool());
		oldUser.setUPrefessional(user.getUPrefessional());
		oldUser.setURecord(user.getURecord());
		oldUser.setUPhone(user.getUPhone());
		oldUser.setUEmail(user.getUEmail());
		ud.saveOrUpdate(oldUser);
		return SUCCESS;
	}
	public String getResumeMessage(){
		if(!ud.findById(id).getTbResumes().isEmpty()){
			Set<TbResume> resumes = ud.findById(id).getTbResumes();
			Iterator<TbResume> it = resumes.iterator();
			if(it.hasNext()){
				resume = it.next();
			}			
		}
		/*String hql = "from TbResume where tbUser = " + user;
		if(rd.findByHQL(hql).size()!=0){
			resume = rd.findByHQL(hql).get(0);
			System.out.println(resume);			
		}*/
		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	public String alterResumeMessage(){
		if(ud.findById(id).getTbResumes().isEmpty()){
			user = ud.findById(id);
			resume.setTbUser(user);
			rd.save(resume);
		}else{
			Set<TbResume> resumes = ud.findById(id).getTbResumes();
			Iterator<TbResume> it = resumes.iterator();
			if(it.hasNext()){
				TbResume oldResume = it.next();
				oldResume.setRsType(resume.getRsType());
				oldResume.setRsMoney(resume.getRsMoney());
				oldResume.setRsEva(resume.getRsEva());
				rd.update(resume);
			}
			
		}		
		return SUCCESS;
	}
	public String getRecruitFromUser(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		user = (TbUser) session.getAttribute("user");
		String hql = "from TbUserRecruit ur left outer join fetch ur.tbRecruit "
				+ "left outer join fetch ur.tbRecruit.tbCompany where ur.tbUser.UId = " + user.getUId();
		userRecruits = urd.findByHQL(hql);
		/*userRecruits = new ArrayList<TbUserRecruit>();
		Set<TbUserRecruit> sets = user.getTbUserRecruits();
		Iterator<TbUserRecruit> it = sets.iterator();
		while(it.hasNext()){
			userRecruits.add(it.next());
		}*/
		return SUCCESS;
	}
	public String delRecuritFromUser(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		user = (TbUser) session.getAttribute("user");
		String hql = "from TbUserRecruit ur left outer join fetch ur.tbUser "
				+ "where ur.tbUser.UId = " + user.getUId();
		urd.delete(urd.findByHQL(hql).get(0).getUrcId());
		return SUCCESS;
	}
}
