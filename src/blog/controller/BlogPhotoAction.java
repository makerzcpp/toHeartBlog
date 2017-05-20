package blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blog.service.photoService;
import blog.service.userService;
import blog.utils.Result;
import blog.utils.shiroUtils;

@Controller
@RequestMapping("/photo")
public class BlogPhotoAction {

	@Autowired photoService photoservice;	
	@Autowired userService userservice;
	
	@RequestMapping(value="/creat/{blogId}", method={RequestMethod.GET})
	public ModelAndView creatPhoto(@PathVariable(value="blogId") String blogId){		
		String userName = shiroUtils.getUserName();
		ModelAndView modelAndView = new ModelAndView();
		if(userName!=null&&userName!="游客"){
		String loginblogId = userservice.findUserByName(userName).getBlogId();
		if(loginblogId==blogId){
		modelAndView.setViewName("/photos/photos_creat");		
		}else{
			modelAndView.setViewName("/error/error");		
		}
		}else{
		String url = "redirect:/index/login";
		modelAndView.setViewName(url);
		}
		modelAndView.addObject("blogId", blogId);
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value="/creat", method={RequestMethod.POST})
	public Result creatPhotoparam(@RequestParam("na") String na,@RequestParam("te") String te,@RequestParam("fen") int fen,@RequestParam("blogId") String blogId){	
		boolean result =true;
		try{
		photoservice.creatPhotoBox(na,te,fen,blogId);
		}catch (Exception e) {
			result = false;
		}
		return new Result(result);	
	}
}
