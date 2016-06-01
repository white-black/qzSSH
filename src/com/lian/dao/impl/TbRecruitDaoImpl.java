package com.lian.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lian.dao.TbRecruitDao;
import com.lian.entity.TbRecruit;
@Repository(value = "TbRecruitDao")
@Transactional
public class TbRecruitDaoImpl extends BaseDaoImpl<TbRecruit> implements TbRecruitDao{

}
