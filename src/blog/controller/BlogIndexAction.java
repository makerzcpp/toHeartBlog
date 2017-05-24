package blog.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import blog.Constant;
import blog.bean.Category;
import blog.bean.PhotosBox;
import blog.service.categoryService;
import blog.service.photoService;
import blog.service.userService;
import blog.utils.shiroUtils;



@Controller
@RequestMapping("/index")
public class BlogIndexAction {
	@Autowired categoryService categoryservice;
	@Autowired photoService photoservice;
	@Autowired userService userservice;	
	
	@RequestMapping(value="/home/{blogId}", method={RequestMethod.GET})
	public ModelAndView toIndex(@PathVariable(value="blogId") String blogId) {			
        ModelAndView modelAndView = new ModelAndView("/main_index/index");
		String logusername = shiroUtils.getUserName();		
		List<Category> cglist = categoryservice.findCategoryList(blogId);
		List<PhotosBox> plist = photoservice.getBoxList(blogId,0,Constant.IndexBoxpageSzie);
		List<PhotosBox> pboxlist = new ArrayList<PhotosBox>();
		//对url进行重构以便直接利用转码之后的图片
		for(PhotosBox box:plist){
			box.setImgHead(box.getImgHead().replace(".jpg", "_smart.jpg").replace(".JPG", "_smart.JPG")
					.replace(".png", "_smart.png").replace(".PNG", "_smart.PNG").replace(".gif", "_smart.gif").replace(".GIF", "_smart.GIF"));
			pboxlist.add(box);
		}
		modelAndView.addObject("pboxlist", pboxlist);
		modelAndView.addObject("logusername", logusername);
		modelAndView.addObject("cglist", cglist);
		modelAndView.addObject("blogId", blogId);
		return modelAndView;
	}
	
	@RequestMapping(value="/photos/{blogId}", method={RequestMethod.GET})
	public ModelAndView toPhotosIndex(@PathVariable(value="blogId") String blogId) {
		ModelAndView modelAndView = new ModelAndView("/main_index/photos_index");
		//页面博客主按钮显示
		String userblogId;
		if(shiroUtils.getUserName()!=null&&!shiroUtils.getUserName().equals(Constant.nologgingName)){
		 userblogId = userservice.findUserByName(shiroUtils.getUserName()).getBlogId();
		 if(blogId.equals(userblogId)){
				modelAndView.addObject("buttonshow", true);
			}
		}
		//页面相册列表
		int pageNum = 0;
		int pageSize = Constant.photoBoxpageSzie;
		List<PhotosBox> list = photoservice.getBoxList(blogId,pageNum,pageSize);		
		modelAndView.addObject("list", list);
		modelAndView.addObject("blogId", blogId);
		return modelAndView;
	}
	
	
	@RequestMapping(value="/resource/{blogId}", method={RequestMethod.GET})
	public ModelAndView toresourceIndex(@PathVariable(value="blogId") String blogId) {
		ModelAndView modelandview = new ModelAndView("/main_index/resource_index");
		modelandview.addObject("blogId", blogId);
		return modelandview;
	}
	
	@RequestMapping(value="/text/{blogId}", method={RequestMethod.GET})
	public ModelAndView totestIndex(@PathVariable(value="blogId") String blogId) {
		ModelAndView modelandview = new ModelAndView("/main_index/text_index");
		modelandview.addObject("blogId", blogId);
		return modelandview;
	}
	
	@RequestMapping(value="/write/{blogId}/{articleId}", method={RequestMethod.GET})
	public ModelAndView toWriteIndex(@PathVariable(value="articleId") String articleId,@PathVariable(value="blogId") String blogId) {
		ModelAndView modelandview = new ModelAndView("/main_index/write_index");
		modelandview.addObject("articleId", articleId);
		if(!articleId.equals(0)){
			
		}		
		return modelandview;
	}
	
	@RequestMapping(value="/login/{blogId}", method={RequestMethod.GET})
	public ModelAndView toLoginIndex(@PathVariable(value="blogId") String blogId) {
		ModelAndView modelandview = new ModelAndView("/main_index/login");
		modelandview.addObject("blogId", blogId);
		return modelandview;
	}
}
