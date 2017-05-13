package blog.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import blog.service.userService;
import blog.utils.shiroUtils;
import blog.utils.usuallyUtils;

@Controller
@RequestMapping("/login")
public class Bloglogin {
	@Autowired userService userservice;
	
	@ResponseBody
	@RequestMapping(value="/register", method={RequestMethod.POST})
	public String toIndex(@RequestParam("email") String email,@RequestParam("username") String username,@RequestParam("password") String password) {
		String reslut ="";
		String pass = shiroUtils.md5(password);
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("email",email);
		map.put("username",username);
		map.put("userpass",pass);
		boolean success = userservice.addUser(map);
		if(success){
			try {
				usuallyUtils.sendEmail();
			} catch (Exception e) {			
				e.printStackTrace();
			}
			reslut = "success";
			}
		return reslut;
	}
}
