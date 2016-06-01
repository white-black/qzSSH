package com.lian.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lian.dao.TbCompanyDao;
import com.lian.entity.TbCompany;
@Repository(value = "TbCompanyDao")
@Transactional
public class TbCompanyDaoImpl extends BaseDaoImpl<TbCompany> implements TbCompanyDao{

}
