package com.lian.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lian.dao.TbUserRecruitDao;
import com.lian.entity.TbUserRecruit;
@Repository(value = "TbUserRecruitDao")
@Transactional
public class TbUserRecruitDaoImpl extends BaseDaoImpl<TbUserRecruit> implements TbUserRecruitDao{

}
