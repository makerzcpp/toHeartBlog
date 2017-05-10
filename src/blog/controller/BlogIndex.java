package blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/index")
public class BlogIndex {
	
	@RequestMapping(value="/home")
	public String toIndex() {		
		return "/main_index/index";
	}
	
	@RequestMapping(value="/photos")
	public String toPhotosIndex() {
		return "/main_index/photos_index";
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
