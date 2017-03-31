/**
 * Project Name:chengyu
 * File Name:UserTest.java
 * Package Name:com.cds.chengyu.test
 * Date:2016��4��17������3:38:42
 * Copyright (c) 2016, 352826256@qq.com All Rights Reserved.
 *
*/

package com.cds.chengyu.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cds.chengyu.model.User;
import com.cds.chengyu.service.IUserService;


/**
 * ClassName: UserTest <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON(可选). <br/>
 * date: 2016年4月17日 下午5:12:58 <br/>
 *
 * @author chend
 * @version 
 * @since JDK 1.6
 */
public class UserTest {
	private IUserService userService;
	@Before
	public void before(){                                                                    
		@SuppressWarnings("resource")
		ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{"classpath:config/spring-mvc.xml"
				,"classpath:config/spring-mybatis.xml"});
		userService = (IUserService) context.getBean("userServiceImpl");
	}
	
	@Test
	public void addUser(){
//		User user = new User();
//		user.setNickname("abc");
//		user.setState(2);
//		System.out.println(userService.insertUser(user));
	}

}

