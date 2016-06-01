package com.lian.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lian.dao.TbResumeDao;
import com.lian.entity.TbResume;
@Repository(value = "TbResumeDao")
@Transactional
public class TbResumeDaoImpl extends BaseDaoImpl<TbResume> implements TbResumeDao{

}
