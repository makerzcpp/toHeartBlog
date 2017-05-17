package blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import blog.Constant;
import blog.bean.Category;
import blog.bean.PhotosBox;
import blog.service.categoryService;
import blog.service.photoService;
import blog.utils.shiroUtils;



@Controller
@RequestMapping("/index")
public class BlogIndexAction {
	@Autowired categoryService categoryservice;
	@Autowired photoService photoservice;
	
	@RequestMapping(value="/home")
	public ModelAndView toIndex() {	
        ModelAndView modelAndView = new ModelAndView("/main_index/index");
		String userName = shiroUtils.getUserName();		
		List<Category> cglist = categoryservice.findCategoryList(userName);
		modelAndView.addObject("user", userName);
		modelAndView.addObject("cglist", cglist);	
		return modelAndView;
	}
	
	@RequestMapping(value="/photos")
	public ModelAndView toPhotosIndex() {
		ModelAndView modelAndView = new ModelAndView("/main_index/photos_index");
		String userName = shiroUtils.getUserName();	
		System.out.println(userName+"-----------");
		int pageNum = 0;
		int pageSize = Constant.photoBoxpageSzie;
		List<PhotosBox> list = photoservice.getBoxList(userName,pageNum,pageSize);
		modelAndView.addObject("list", list);
		return modelAndView;
	}
	
	@RequestMapping(value="/photoslist")
	public String toPhotosList() {
		return "/main_index/photos_lists";
	}
	
	@RequestMapping(value="/resource")
	public String toresourceIndex() {
		return "/main_index/resource_index";
	}
	
	@RequestMapping(value="/test")
	public String totestIndex() {
		return "/main_index/test_index";
	}
	
	@RequestMapping(value="/write")
	public String toWriteIndex() {
		return "/main_index/write_index";
	}
	
	@RequestMapping(value="/login")
	public String toLoginIndex() {
		return "/main_index/login";
	}
}
