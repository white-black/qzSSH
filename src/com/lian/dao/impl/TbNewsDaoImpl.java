package com.lian.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lian.dao.TbNewsDao;
import com.lian.entity.TbNews;
@Repository(value = "TbNewsDao")
@Transactional
public class TbNewsDaoImpl extends BaseDaoImpl<TbNews> implements TbNewsDao{

}
