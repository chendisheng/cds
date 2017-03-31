/**
 * Project Name:chengyu
 * File Name:UserController.java
 * Package Name:com.cds.chengyu.controller
 * Date:2016年4月17日下午8:05:05
 * Copyright (c) 2016, 352826256@qq.com All Rights Reserved.
 *
*/

package com.cds.chengyu.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cds.chengyu.model.User;
import com.cds.chengyu.service.IUserService;

/**
 * ClassName:UserController <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason:	 TODO ADD REASON. <br/>
 * Date:     2016年4月17日 下午8:05:05 <br/>
 * @author   chend
 * @version  
 * @since    JDK 1.6
 * @see 	 
 */
@Controller
public class UserController {
	@Resource
	private IUserService userService;
	
	@RequestMapping("/showUser/{id}")
	public String toIndex(@PathVariable String id,HttpServletRequest request,Model model){
		int userId = Integer.parseInt(id);
		User user = this.userService.getUserById(userId);
		model.addAttribute("user", user);
		return "showUser";
	}
	
	@RequestMapping("/showUser2/{id}")
	public String showUser(@PathVariable String id,HttpServletRequest request,HttpServletResponse response){
		int userId = Integer.parseInt(id);
		User user = this.userService.getUserById(userId);
		request.getSession().setAttribute("user", user);
		
		return "showUser";
	}
	
	@RequestMapping("/showUser3/{id}")
	public String showUser(@PathVariable String id,HttpServletRequest request){
		int userId = Integer.parseInt(id);
		User user = this.userService.getUserById(userId);
		request.getSession().setAttribute("user", user);
		
		return "showUser";
	}
	@RequestMapping("/testRb01")
	@ResponseBody
	public User showUser01(@RequestBody User u){
		return u;
	}
	
	@RequestMapping("/testCustomObj")
	@ResponseBody
	public User showUser02(User u){
		return u;
	}
	
	@RequestMapping("/testCustomObjWithRp")
	@ResponseBody
	public User showUser03(@RequestParam User u){
		return u;
	}
	
	@RequestMapping("/testDate")
	@ResponseBody
	public Date showUser04(Date date){
		return date;
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request,HttpServletResponse response){
		return "login";
	}
	@RequestMapping("/admin")
	public String main(HttpServletRequest request,HttpServletResponse response){
		return "admin";
	}
	
	@RequestMapping("/admin_demo")
	public String main2(HttpServletRequest request,HttpServletResponse response){
		return "admin_demo";
	}

	@RequestMapping("/signin")
	public String signin(HttpServletRequest request,HttpServletResponse response){
		return "signin";
	}
	
	@RequestMapping("notice/send")
	public String noticeSend(HttpServletRequest request,HttpServletResponse response){
		return "notice/send";
	}
	@RequestMapping("notice/wenzi")
	public String noticeTypography(HttpServletRequest request,HttpServletResponse response){
		return "notice/wenzi";
	}
}

