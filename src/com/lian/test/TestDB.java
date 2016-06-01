package com.lian.test;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import com.lian.dao.TbCommentDao;
import com.lian.dao.TbUserDao;
import com.lian.dao.impl.TbUserDaoImpl;
import com.lian.entity.TbComment;
import com.lian.entity.TbUser;

public class TestDB {
	private TbCommentDao comd;
	private List<TbComment> comments;
	private TbUserDao ud;
	private List<TbUser> users;
	public List<TbComment> getComments() {
		return comments;
	}
	public void setComments(List<TbComment> comments) {
		this.comments = comments;
	}
	public TbCommentDao getComd() {
		return comd;
	}
	@Resource(name="TbCommentDao")
	public void setComd(TbCommentDao comd) {
		this.comd = comd;
	}
	public TbUserDao getUd() {
		return ud;
	}
	@Resource(name="TbUserDao")
	public void setUd(TbUserDao ud) {
		this.ud = ud;
	}
	public List<TbUser> getUsers() {
		return users;
	}
	public void setUsers(List<TbUser> users) {
		this.users = users;
	}
	@Test
	public void testConn(){
		DataBaseConn conn = new DataBaseConn();
		System.out.println(conn.getConn());
	}
	@Test
	public void test1(){
		TbUserDao ud = new TbUserDaoImpl();
		List<TbUser> users = new ArrayList<TbUser>();
		String hql = "from TbUser";
		users = ud.findByHQL(hql);
		System.out.println(users);
	}
}
