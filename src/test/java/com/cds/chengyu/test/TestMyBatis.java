/**
 * Project Name:chengyu
 * File Name:TestMyBatis.java
 * Package Name:com.cds.chengyu.test
 * Date:2016��4��17������3:48:00
 * Copyright (c) 2016, 352826256@qq.com All Rights Reserved.
 *
*/

package com.cds.chengyu.test;
import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.cds.chengyu.model.User;
import com.cds.chengyu.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)		//表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:config/spring-mybatis.xml"})

public class TestMyBatis {
	private static Logger logger = Logger.getLogger(TestMyBatis.class);
//	private ApplicationContext ac = null;
	@Resource
	private IUserService userService = null;

//	@Before
//	public void before() {
//		ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//		userService = (IUserService) ac.getBean("userService");
//	}

	@Test
	public void test1() {
		User user = userService.getUserById(1);
		 System.out.println(user.getNickname());
		 logger.info("值："+user.getNickname());
		 logger.info(JSON.toJSONString(user));
	}
}