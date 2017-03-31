/**
 * Project Name:chengyu
 * File Name:MainController.java
 * Package Name:com.cds.chengyu.controller
 * Date:2016年7月25日下午9:44:59
 * Copyright (c) 2016, 352826256@qq.com All Rights Reserved.
 *
*/

package com.cds.chengyu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ClassName:MainController <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason:	 TODO ADD REASON. <br/>
 * Date:     2016年7月25日 下午9:44:59 <br/>
 * @author   chend
 * @version  
 * @since    JDK 1.6
 * @see 	 
 */
@Controller
public class MainController {
	@RequestMapping("/easyui")
	public String easyui(HttpServletRequest request,Model model){
		return "easyui/easyui";
	}
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request,Model model){
		return "easyui/index";
	}
}

