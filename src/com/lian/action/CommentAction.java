package com.lian.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.lian.dao.TbCommentDao;
import com.lian.dao.TbCompanyDao;
import com.lian.entity.TbComment;
import com.lian.entity.TbCompany;
import com.lian.entity.TbUser;
import com.opensymphony.xwork2.ActionSupport;

@Controller("comment")
public class CommentAction extends ActionSupport{
	private int id;
	private TbComment comment;
	private TbCommentDao comd;
	private List<TbComment> comments;
	private TbCompany company;
	private TbCompanyDao cd;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String saveComment(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbUser user = (TbUser) session.getAttribute("user");
		//这是公司的id
		company = cd.findById(id);
		comment.setTbUser(user);
		comment.setTbCompany(company);
		comment.setCtDate(new java.util.Date());
		comd.save(comment);
		return SUCCESS;
	}
	public String getAllComments(){
		/*String hql = "from TbComment comment left outer join fetch comment.tbUser "
				+ "left outer join fetch comment.tbCompany where comment.tbCompany.CId="+41;*/
		String hql = "from TbComment comt left outer join fetch comt.tbUser where comt.tbCompany.CId = "+id;
		comments = comd.findByHQL(hql);
		return SUCCESS;
	}
}
