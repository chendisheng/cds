/**
 * Project Name:chengyu
 * File Name:UserServiceImpl.java
 * Package Name:com.cds.chengyu.service.impl
 * Date:2016年4月17日 下午3:08:54
 * Copyright (c) 2016, chenzhou1025@126.com All Rights Reserved.
 *
*/

package com.cds.chengyu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cds.chengyu.dao.IUserDao;
import com.cds.chengyu.model.User;
import com.cds.chengyu.service.IUserService;


/**
 * ClassName: UserServiceImpl <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON(可选). <br/>
 * date: 2016年4月17日 下午4:24:09 <br/>
 *
 * @author chend
 * @version 
 * @since JDK 1.6
 */
@Service("userService")
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDao userDao;
	
	public User getUserById(int userId) {
		
		return this.userDao.selectByPrimaryKey(userId);
	}

}

