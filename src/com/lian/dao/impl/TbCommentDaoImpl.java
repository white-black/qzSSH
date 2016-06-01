package com.lian.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lian.dao.TbCommentDao;
import com.lian.entity.TbComment;
@Repository(value = "TbCommentDao")
@Transactional
public class TbCommentDaoImpl extends BaseDaoImpl<TbComment> implements TbCommentDao{

}
