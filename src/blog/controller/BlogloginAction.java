package blog.controller;

import java.util.HashMap;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import blog.service.userService;
import blog.utils.Result;
import blog.utils.shiroUtils;

@Controller
@RequestMapping("/login")
public class BlogloginAction {
	@Autowired userService userservice;
	
	/*
	 * 用户注册
	 */
	@ResponseBody
	@RequestMapping(value="/register", method={RequestMethod.POST})
	public Result register(@RequestParam("email") String email,@RequestParam("username") String username,@RequestParam("password") String password) { 
		String pass = shiroUtils.md5(password);
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("email",email);
		map.put("username",username);
		map.put("userpass",pass);
		boolean success = userservice.addUser(map);
		/*if(success){   
		//发送邮件激活，暂时不做操作，后续加入
			}*/
		return new Result(success);
	}
	
	/*
	 * 用户登录
	 */
	@ResponseBody
	@RequestMapping(value="/toHome", method={RequestMethod.POST})
	public Result login(@RequestParam("username") String username,@RequestParam("password") String password) { 
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);		
		try {
        	//执行认证操作. 
            subject.login(token);
        }catch (AuthenticationException ae) {
        	System.out.println("登陆失败: " + ae.getMessage());
        	return new Result(false);
        }		
		return new Result(true);
	}
}
