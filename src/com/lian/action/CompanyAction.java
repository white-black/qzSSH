package com.lian.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.lian.dao.TbCompanyDao;
import com.lian.dao.TbCompanyResumeDao;
import com.lian.dao.TbRecruitDao;
import com.lian.dao.TbResumeDao;
import com.lian.dao.TbUserRecruitDao;
import com.lian.entity.TbCompany;
import com.lian.entity.TbCompanyResume;
import com.lian.entity.TbRecruit;
import com.lian.entity.TbResume;
import com.lian.entity.TbUser;
import com.lian.entity.TbUserRecruit;
import com.opensymphony.xwork2.ActionSupport;

@Controller("company")
public class CompanyAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int id;
	private int a_key;
	private int setRecruit;//判断简历是否投递成功
	private TbResumeDao rsd;
	private TbCompany company;
	private TbCompanyDao cd;
	private TbRecruit recruit;
	private TbRecruitDao rd;
	private List<TbCompany> companys;
	private List<TbRecruit> recruits;
	private TbUserRecruit userRecurit;
	private TbUserRecruitDao urd;
	private TbCompanyResume companyResume;
	private TbCompanyResumeDao crd;
	private List<TbCompanyResume> companyResumes;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSetRecruit() {
		return setRecruit;
	}
	public void setSetRecruit(int setRecruit) {
		this.setRecruit = setRecruit;
	}
	public int getA_key() {
		return a_key;
	}
	public void setA_key(int a_key) {
		this.a_key = a_key;
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
	public TbResumeDao getRsd() {
		return rsd;
	}
	@Resource(name="TbResumeDao")
	public void setRsd(TbResumeDao rsd) {
		this.rsd = rsd;
	}
	@Resource(name="TbCompanyDao")
	public void setCd(TbCompanyDao cd) {
		this.cd = cd;
	}
	public String execute(){
		return SUCCESS;
	}
	public String companyDetailed(){
		company = cd.findById(id);
		return SUCCESS;
	}
	public TbRecruit getRecruit() {
		return recruit;
	}
	public void setRecruit(TbRecruit recruit) {
		this.recruit = recruit;
	}
	public TbRecruitDao getRd() {
		return rd;
	}
	@Resource(name="TbRecruitDao")
	public void setRd(TbRecruitDao rd) {
		this.rd = rd;
	}
	public List<TbRecruit> getRecruits() {
		return recruits;
	}
	public void setRecruits(List<TbRecruit> recruits) {
		this.recruits = recruits;
	}
	public List<TbCompany> getCompanys() {
		return companys;
	}
	public void setCompanys(List<TbCompany> companys) {
		this.companys = companys;
	}
	public TbUserRecruit getUserRecurit() {
		return userRecurit;
	}
	public void setUserRecurit(TbUserRecruit userRecurit) {
		this.userRecurit = userRecurit;
	}
	public TbUserRecruitDao getUrd() {
		return urd;
	}
	@Resource(name="TbUserRecruitDao")
	public void setUrd(TbUserRecruitDao urd) {
		this.urd = urd;
	}
	public TbCompanyResume getCompanyResume() {
		return companyResume;
	}
	public void setCompanyResume(TbCompanyResume companyResume) {
		this.companyResume = companyResume;
	}
	public TbCompanyResumeDao getCrd() {
		return crd;
	}
	@Resource(name="TbCompanyResumeDao")
	public void setCrd(TbCompanyResumeDao crd) {
		this.crd = crd;
	}
	public List<TbCompanyResume> getCompanyResumes() {
		return companyResumes;
	}
	public void setCompanyResumes(List<TbCompanyResume> companyResumes) {
		this.companyResumes = companyResumes;
	}
	public String alterCompanyDetailed(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbCompany oldCompany = (TbCompany) session.getAttribute("company");
		oldCompany.setCComname(company.getCComname());
		oldCompany.setCLocation(company.getCLocation());
		oldCompany.setCRelname(company.getCRelname());
		oldCompany.setCRelphone(company.getCRelphone());
		cd.saveOrUpdate(oldCompany);
		return SUCCESS;
	}
	public String getRecruitsForCompany(){
		/*HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbCompany company = (TbCompany) session.getAttribute("company");
		int cid = company.getCId();*/
		/*if(!cd.findById(id).getTbRecruits().isEmpty()){
			Set<TbRecruit> recruitsSet = cd.findById(id).getTbComments();
			Iterator<TbRecruit> it = recruitsSet.iterator();
			while(it.hasNext()){
				recruits.add(it.next());
			}
			return SUCCESS;			
		}else{
			return INPUT;
		}*/
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		request.setAttribute("del_rec_flag", 1);
		TbCompany company = (TbCompany) session.getAttribute("company");
		String hql = "from TbRecruit rec left outer join fetch rec.tbCompany where rec.tbCompany.CId = "+ company.getCId();
		recruits = rd.findByHQL(hql);
		/*recruit = null;*/
		return SUCCESS;
	}
	public String saveRecruit(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbCompany company = (TbCompany) session.getAttribute("company");
		recruit.setTbCompany(company);
		recruit.setRcStarttime(new java.util.Date());
		rd.saveOrUpdate(recruit);//修改处
		recruit = null;
		return SUCCESS;
	}
	public String alterRecruit(){
		rd.saveOrUpdate(recruit);//修改处，，，，
		return SUCCESS;
	}
	public String getThisRecruit(){
		recruit = rd.findById(id);
		return SUCCESS;
	}
	public String delThisRecruit(){
		rd.delete(id);
		return SUCCESS;
	}
	public String getSomRecruits(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("frist_flag", 1);
		String hql = "from TbRecruit rec left outer join fetch rec.tbCompany";
		recruits = rd.findByHQL(hql, 0, 3);
		return SUCCESS;
	}
	//用户投递简历
	public String setRecruit(){
		//将数据传入到用户-职位表中
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbUser user= (TbUser) session.getAttribute("user");
		recruit = rd.findById(id);
		userRecurit = new TbUserRecruit();
		userRecurit.setTbUser(user);
		userRecurit.setTbRecruit(recruit);
		userRecurit.setUrcDate(new java.util.Date());
		urd.save(userRecurit);
		//将数据传入到公司-简历表中
		companyResume = new TbCompanyResume();
		TbCompany company = recruit.getTbCompany();
		String getResume = "from TbResume res left outer join fetch res.tbUser where res.tbUser.UId ="+user.getUId();
		TbResume resume = rsd.findByHQL(getResume).iterator().next();
		System.out.println(user.getUName());
		System.out.println(resume);
		companyResume.setTbCompany(company);
		companyResume.setTbResume(resume);
		companyResume.setCrsDate(new java.util.Date());
		crd.save(companyResume);
		setRecruit = 1;
		return SUCCESS;
	}
	//公司显示投递的简历
	public String getResumeFromCompany(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		company = (TbCompany) session.getAttribute("company");
		String hql = "from TbCompanyResume cr left outer join fetch cr.tbResume "
				+ "left outer join fetch cr.tbResume.tbUser where cr.tbCompany.CId=" + company.getCId();
		companyResumes = crd.findByHQL(hql);
		return SUCCESS;
	}
	public String delResumeFromCompany(){
		crd.delete(id);
		return SUCCESS;
	}
}
