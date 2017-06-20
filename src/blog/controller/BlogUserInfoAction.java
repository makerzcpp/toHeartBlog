package blog.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import blog.Constant;
import blog.bean.Article;
import blog.bean.Category;
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
	
	@RequestMapping(value="/articleblog/{blogId}", method={RequestMethod.POST})
	public ModelAndView getArticle(@PathVariable(value="blogId") String blogId,@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize) {
		ModelAndView modelandview = new ModelAndView("/article/article_list");
		int artNum = articleservice.getAllArticleNum(blogId);		
		List<Article> hotarlist = articleservice.getHotArticleList(blogId, 0, 3);
		List<Article> arlist = new ArrayList<>();
		if(pageNum==null||pageSize==null){
			arlist = articleservice.getArticleList(blogId, 0, Constant.IndexBoxpageSzie);
		}else{
			arlist = articleservice.getArticleList(blogId, Integer.parseInt(pageNum)-1, Integer.parseInt(pageSize));
		}
		List<Category> cglist = categoryservice.findCategoryList(blogId);
		modelandview.addObject("arlist", arlist);
		modelandview.addObject("cglist", cglist);
		modelandview.addObject("blogId", blogId);
		modelandview.addObject("hotarlist", hotarlist);
		modelandview.addObject("artNum", artNum);
		return modelandview;
}
	
}
