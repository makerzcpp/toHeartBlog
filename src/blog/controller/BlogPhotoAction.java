package blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/photo")
public class BlogPhotoAction {

	@RequestMapping(value="/creat")
	public ModelAndView creatPhoto(){
		ModelAndView modelAndView = new ModelAndView("/photos/photos_creat");
		return modelAndView;
	}
}
