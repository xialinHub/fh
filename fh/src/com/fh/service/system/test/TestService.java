package com.fh.service.system.test;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;

@Service("testService")
public class TestService{

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
}
