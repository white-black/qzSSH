package com.lian.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lian.dao.TbCompanyResumeDao;
import com.lian.entity.TbCompanyResume;
@Repository(value = "TbCompanyResumeDao")
@Transactional
public class TbCompanyResumeDaoImpl extends BaseDaoImpl<TbCompanyResume> implements TbCompanyResumeDao{

}
