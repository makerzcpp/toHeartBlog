package blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import blog.service.ArticleService;
import blog.service.categoryService;
import blog.service.photoService;
import blog.service.userService;



@Controller
@RequestMapping("/userinfo")
public class BlogUserInfoAction {
	@Autowired categoryService categoryservice;
	@Autowired photoService photoservice;
	@Autowired userService userservice;	
	@Autowired ArticleService articleservice;	
	

	@RequestMapping(value="/msgedit/{blogId}", method={RequestMethod.GET})
	public ModelAndView toUserEdit(@PathVariable(value="blogId") String blogId) {
		ModelAndView modelandview = new ModelAndView("/userinfo/userinfo_edit");
		modelandview.addObject("blogId", blogId);
		return modelandview;
	}

	@RequestMapping(value="/index/{blogId}", method={RequestMethod.GET})
	public ModelAndView toUserInfo(@PathVariable(value="blogId") String blogId) {
		ModelAndView modelandview = new ModelAndView("/userinfo/userinfo_index");
		modelandview.addObject("blogId", blogId);
		return modelandview;
}
	
}
