package com.lian.dao.impl;


import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lian.dao.TbUserDao;
import com.lian.entity.TbUser;
@Repository(value = "TbUserDao")
@Transactional
public class TbUserDaoImpl extends BaseDaoImpl<TbUser> implements TbUserDao{
	
}
