package blog.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class Bloglogin {
	
	@RequestMapping(value="/register", method={RequestMethod.POST})
	public boolean toIndex(HashMap map) {
		boolean reslut ;
		String email = (String) map.get("email");
		System.out.println(email);
		return true;
	}
}
