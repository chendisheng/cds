/**
 * Project Name:chengyu
 * File Name:IUserDao.java
 * Package Name:com.cds.chengyu.dao
 * Date:2016年4月17日下午3:26:55
 * Copyright (c) 2016, 352826256@qq.com All Rights Reserved.
 *
*/

package com.cds.chengyu.dao;

import com.cds.chengyu.model.User;

/**
 * ClassName: IUserDao <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON(). <br/>
 * date: 2016年4月17日下午3:32:29 <br/>
 *
 * @author chend
 * @version 
 * @since JDK 1.6
 */
public interface IUserDao {
//	public int insertUser(User user);
	
	public User selectByPrimaryKey(int userId); 	 	
	
}

