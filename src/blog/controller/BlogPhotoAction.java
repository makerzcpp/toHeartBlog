package blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blog.service.photoService;
import blog.utils.Result;
import blog.utils.shiroUtils;

@Controller
@RequestMapping("/photo")
public class BlogPhotoAction {

	@Autowired photoService photoservice;
	
	@RequestMapping(value="/creat", method={RequestMethod.GET})
	public ModelAndView creatPhoto(){
		String userName = shiroUtils.getUserName();
		ModelAndView modelAndView;
		if(userName!=null){
		modelAndView = new ModelAndView("/photos/photos_creat");
		}else{
		String url = "redirect:/index/login";
		modelAndView = new ModelAndView(url);
		}
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value="/creat", method={RequestMethod.POST})
	public Result creatPhotoparam(@RequestParam("na") String na,@RequestParam("te") String te,@RequestParam("fen") int fen){	
		boolean result =true;
		try{
		photoservice.creatPhotoBox(na,te,fen);
		}catch (Exception e) {
			result = false;
		}
		return new Result(result);	
	}
}
