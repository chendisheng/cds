/**
 * Project Name:chengyu
 * File Name:UserControllerTests.java
 * Package Name:com.cds.chengyu.test
 * Date:2016年4月18日下午9:39:48
 * Copyright (c) 2016, 352826256@qq.com All Rights Reserved.
 *
*/

package com.cds.chengyu.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.ui.Model;

import com.cds.chengyu.controller.UserController;

/**
 * ClassName:UserControllerTests <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason:	 TODO ADD REASON. <br/>
 * Date:     2016年4月18日 下午9:39:48 <br/>
 * @author   chend
 * @version  
 * @since    JDK 1.6
 * @see 	 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:config/spring-mybatis.xml",
"classpath:config/spring-mvc.xml"})
public class UserControllerTests {
	
	// 模拟request,response  
    private MockHttpServletRequest request;  
    private MockHttpServletResponse response; 
    
      
    // 注入loginController  
    @Autowired  
    private UserController userController ; 

	@Before
	public void setUp() throws Exception {
	       request = new MockHttpServletRequest();      
	       request.setCharacterEncoding("UTF-8");      
	       response = new MockHttpServletResponse(); 
	}

	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	@Test
	public void showUser() {
        try {  
        	String id = "1";
            assertEquals("showUser",userController.showUser(id, request, response));  
        } catch (Exception e) {  
            e.printStackTrace();  
            fail("测试不通过,userController.showUser(id, request, response):");
        }  
		
	}

}

