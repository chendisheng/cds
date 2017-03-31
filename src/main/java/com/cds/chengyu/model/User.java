/**
 * Project Name:chengyu
 * File Name:User.java
 * Package Name:com.cds.chengyu.model
 * Date:2016��4��17������3:12:19
 * Copyright (c) 2016, 352826256@qq.com All Rights Reserved.
 *
*/

package com.cds.chengyu.model;

import org.apache.ibatis.type.Alias;

/**
 * ClassName:User <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason:	 TODO ADD REASON. <br/>
 * Date:     2016年4月17日 下午3:12:19 <br/>
 * @author   chend
 * @version  
 * @since    JDK 1.6
 * @see 	 
 */
@Alias("User")
public class User {
	private int id;
	private int state;
	private String nickname;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

}

