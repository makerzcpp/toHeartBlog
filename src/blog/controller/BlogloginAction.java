package blog.controller;

import java.util.HashMap;

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
	
	@ResponseBody
	@RequestMapping(value="/register", method={RequestMethod.POST})
	public Result toIndex(@RequestParam("email") String email,@RequestParam("username") String username,@RequestParam("password") String password) { 
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
}
