/**
 * Project Name:chengyu
 * File Name:IUserService.java
 * Package Name:com.cds.chengyu.service.impl
 * Date:2016年4月17日 下午3:07:35
 * Copyright (c) 2016, chenzhou1025@126.com All Rights Reserved.
 *
*/

package com.cds.chengyu.service;

import com.cds.chengyu.model.User;


/**
 * ClassName: IUserService <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON(可选). <br/>
 * date: 2016年4月17日 下午4:23:06 <br/>
 *
 * @author chend
 * @version 
 * @since JDK 1.6
 */
public interface IUserService {
	
//	public int insertUser(User user);
	
	public User getUserById(int userId);
}

