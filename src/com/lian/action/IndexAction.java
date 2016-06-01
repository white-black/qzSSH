package com.lian.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.lian.dao.TbCommentDao;
import com.lian.dao.TbCompanyDao;
import com.lian.dao.TbNewsDao;
import com.lian.dao.TbRecruitDao;
import com.lian.dao.TbResumeDao;
import com.lian.entity.TbComment;
import com.lian.entity.TbCompany;
import com.lian.entity.TbNews;
import com.lian.entity.TbRecruit;
import com.lian.entity.TbResume;
import com.lian.entity.TbUser;
import com.opensymphony.xwork2.ActionSupport;

@Controller("index")
public class IndexAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int id;
	private int setRecruit;//简历是否投递成功的标志
	private int pageNumber;//分页处理的当前页数
	private TbRecruit recruit;
	private TbRecruitDao rd;
	private List<TbRecruit> recruits;
	
	private String companyName;
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	private TbCompany company;
	private TbCompanyDao cd;
	
	private FenYe fenye;
	private List<TbRecruit> indexRecruits;
	private List<TbNews> indexNews;
	private TbNews news;
	private TbNewsDao nd;
	private String searchRecruit;
	
	private TbComment comment;
	private TbCommentDao comd;
	private List<TbComment> comments;

	private TbResume resume;
	private List<TbResume> resumes;
	private TbResumeDao rsd;
	
	private TbUser user;
	
	
	public TbCompany getCompany() {
		return company;
	}
	public void setCompany(TbCompany company) {
		this.company = company;
	}
	public TbComment getComment() {
		return comment;
	}
	public void setComment(TbComment comment) {
		this.comment = comment;
	}
	public TbCommentDao getComd() {
		return comd;
	}
	@Resource(name="TbCommentDao")
	public void setComd(TbCommentDao comd) {
		this.comd = comd;
	}
	public List<TbComment> getComments() {
		return comments;
	}
	public void setComments(List<TbComment> comments) {
		this.comments = comments;
	}
	public TbResume getResume() {
		return resume;
	}
	public void setResume(TbResume resume) {
		this.resume = resume;
	}
	public TbUser getUser() {
		return user;
	}
	public void setUser(TbUser user) {
		this.user = user;
	}
	public List<TbResume> getResumes() {
		return resumes;
	}
	public void setResumes(List<TbResume> resumes) {
		this.resumes = resumes;
	}
	public TbResumeDao getRsd() {
		return rsd;
	}
	@Resource(name="TbResumeDao")
	public void setRsd(TbResumeDao rsd) {
		this.rsd = rsd;
	}
	public String getSearchRecruit() {
		return searchRecruit;
	}
	public void setSearchRecruit(String searchRecruit) {
		this.searchRecruit = searchRecruit;
	}
	public TbNews getNews() {
		return news;
	}
	public void setNews(TbNews news) {
		this.news = news;
	}
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
	public TbCompanyDao getCd() {
		return cd;
	}
	public List<TbRecruit> getRecruits() {
		return recruits;
	}
	public void setRecruits(List<TbRecruit> recruits) {
		this.recruits = recruits;
	}
	@Resource(name="TbCompanyDao")
	public void setCd(TbCompanyDao cd) {
		this.cd = cd;
	}
	public FenYe getFenye() {
		return fenye;
	}
	public void setFenye(FenYe fenye) {
		this.fenye = fenye;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public List<TbRecruit> getIndexRecruits() {
		return indexRecruits;
	}
	public void setIndexRecruits(List<TbRecruit> indexRecruits) {
		this.indexRecruits = indexRecruits;
	}
	public List<TbNews> getIndexNews() {
		return indexNews;
	}
	public void setIndexNews(List<TbNews> indexNews) {
		this.indexNews = indexNews;
	}
	public TbNewsDao getNd() {
		return nd;
	}
	@Resource(name="TbNewsDao")
	public void setNd(TbNewsDao nd) {
		this.nd = nd;
	}
	//查找职位
	public String searchRecruit(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("search_flag", 1);
		String hql = "from TbRecruit rec left outer join fetch rec.tbCompany where rec.rcName like '" + searchRecruit +"'";
		indexRecruits = rd.findByHQL(hql);
		return SUCCESS;
	}
	public String getSomerecruitAndNews(){
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("frist_flag", 1);
		String hql = "from TbRecruit rec left outer join fetch rec.tbCompany";
		indexRecruits = rd.findByHQL(hql, 0, 3);
		String hql1 = "from TbNews";
		indexNews = nd.findByHQL(hql1);
		return SUCCESS;
	}
	public String redirectNew(){
		news = nd.findById(id);
		return SUCCESS;
	}
	public String redirectResume(){
		resume = rsd.findById(id);
		user = resume.getTbUser();
		return SUCCESS;
	}
	//在首页点击职位时跳转
	public String redirectRecruit(){
		//String hql = "from TbRecruit rec left outer join fetch rec.tbCompany where rec.rcId =" + id;
		recruit = rd.findById(id);
		company = recruit.getTbCompany();
		companyName =company.getCComname();
		System.out.println(company.getCId());
		String getRecruitFromCompany = "from TbRecruit rec left outer join fetch rec.tbCompany where rec.tbCompany.CId =" +company.getCId() ;
		recruits = rd.findByHQL(getRecruitFromCompany);
		comments = getCompanyComment(company.getCId());
		return SUCCESS;
	}
	//在首页点击公司名称时跳转
	public String redirectCompany(){
		//String hql = "from TbCompany com left outer join fetch com.tbRecruits where com.CId =" +id;
		company = cd.findById(id);
		String getRecruitFromCompany = "from TbRecruit rec left outer join fetch rec.tbCompany where rec.tbCompany.CId =" +company.getCId() ;
		recruits = rd.findByHQL(getRecruitFromCompany);
		comments = getCompanyComment(id);
		return SUCCESS;
	}
	private List<TbComment> getCompanyComment(int comid){
		String hql = "from TbComment comt left outer join fetch comt.tbCompany where comt.tbCompany.CId =" +comid;
		comments = comd.findByHQL(hql);
		return comments;
	}
	/*public String redirectPage(){
		//这里的id是公司的id
		String hql = "from TbRecruit rec left outer join fetch rec.tbCompany where rec.tbCompany.CId =" + id;
		if(!rd.findByHQL(hql).isEmpty()){
			recruit = rd.findByHQL(hql).get(0);
			company = recruit.getTbCompany();			
		}
		//这个id是职位id
		Set<TbRecruit> recs = company.getTbRecruits();
		Iterator<TbRecruit> it = recs.iterator();
		recruits = new ArrayList<TbRecruit>();
		if(!recs.isEmpty()){
			while(it.hasNext()){
				recruits.add(it.next());
			}
		}else{
			String hql2 = "from TbRecruit rec left outer join fetch rec.tbCompany where rec.rcId =" + id;
			recruits = rd.findByHQL(hql2);			
		}
		Set<TbComment> comSet = company.getTbComments() ;
		Iterator<TbComment> comit = comSet.iterator();
		comments = new ArrayList<TbComment>();
		if(!comSet.isEmpty()){
			while(comit.hasNext()){
				comments.add(comit.next());
			}
		}
		return SUCCESS;
	}*/
	public String getAllRecruits(){
		String count = "select count(*) from TbRecruit";
		String hql = "from TbRecruit rec left outer join fetch rec.tbCompany";
		fenye = new FenYe();
		
		int totalPage = rd.getTotal(count);
		fenye.setPageSize(4);
		fenye.setTotalPage(totalPage);
		if(this.pageNumber <= 0){
			this.pageNumber = 1;
		}
		if(this.pageNumber > fenye.getTotalPage()){
			this.pageNumber = fenye.getTotalPage();
		}
		fenye.setPageNumber(pageNumber);
		
		recruits = rd.findByHQL(hql, fenye.getPageNumber()-1, fenye.getPageSize());
		return SUCCESS;
	}
	public String getAllResumes(){
		String count = "select count(*) from TbResume";
		String hql = "from TbResume res left outer join fetch res.tbUser";
		fenye = new FenYe();
		
		int totalPage = rd.getTotal(count);
		fenye.setPageSize(4);
		fenye.setTotalPage(totalPage);
		if(this.pageNumber <= 0){
			this.pageNumber = 1;
		}
		if(this.pageNumber > fenye.getTotalPage()){
			this.pageNumber = fenye.getTotalPage();
		}
		fenye.setPageNumber(pageNumber);
		
		resumes = rsd.findByHQL(hql, fenye.getPageNumber()-1, fenye.getPageSize());
		return SUCCESS;
	}
	public String myResume(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbUser user= (TbUser) session.getAttribute("user");
		if(user == null){
			request.setAttribute("myResumeandRecruit", 0);
			return INPUT;
		}
		return SUCCESS;
	}
	public String myRecruit(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbUser user= (TbUser) session.getAttribute("user");
		if(user == null){
			request.setAttribute("myResumeandRecruit", 0);
			return INPUT;
		}
		return SUCCESS;
	}
	public String saveComment(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbUser user = (TbUser) session.getAttribute("user");
		//这是公司的id
		company = cd.findById(id);
		System.out.println("保存评论"+id);
		comment.setTbUser(user);
		comment.setTbCompany(company);
		comment.setCtDate(new java.util.Date());
		comd.save(comment);
		return SUCCESS;
	}
}
