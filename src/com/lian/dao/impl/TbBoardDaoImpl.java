package com.lian.dao.impl;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lian.dao.TbBoardDao;
import com.lian.entity.TbBoard;
@Repository(value = "TbBoardDao")
@Transactional
public class TbBoardDaoImpl extends BaseDaoImpl<TbBoard> implements TbBoardDao{

}
