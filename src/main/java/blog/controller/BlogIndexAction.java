package blog.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import blog.Constant;
import blog.bean.Article;
import blog.bean.Category;
import blog.bean.PhotosBox;
import blog.service.ArticleService;
import blog.service.categoryService;
import blog.service.photoService;
import blog.service.userService;
import blog.utils.shiroUtils;


@Controller
@RequestMapping("/index")
public class BlogIndexAction {
    @Autowired
    categoryService categoryservice;
    @Autowired
    photoService photoservice;
    @Autowired
    userService userservice;
    @Autowired
    ArticleService articleservice;
    @Value("${BLOGID}")
    private String blogId;

    @RequestMapping(value = "",method = RequestMethod.GET)
    public ModelAndView toIndexNew() {
        ModelAndView mv = new ModelAndView("/main_index/index");
        String logusername = shiroUtils.getUserName();
        List<Category> cglist = categoryservice.findCategoryList(blogId);
        List<PhotosBox> plist = photoservice.getBoxList(blogId, 0, Constant.IndexBoxpageSzie);
        List<PhotosBox> pboxlist = new ArrayList<PhotosBox>();
        List<Article> hotarlist = articleservice.getHotArticleList(blogId, 0, 2);
        //对url进行重构以便直接利用转码之后的图片
        for (PhotosBox box : plist) {
            box.setImgHead(box.getImgHead().replace(".jpg", "_smart.jpg").replace(".JPG", "_smart.JPG")
                    .replace(".png", "_smart.png").replace(".PNG", "_smart.PNG").replace(".gif", "_smart.gif").replace(".GIF", "_smart.GIF"));
            pboxlist.add(box);
        }
        mv.addObject("pboxlist", pboxlist);
        mv.addObject("hotarlist", hotarlist);
        mv.addObject("logusername", logusername);
        mv.addObject("cglist", cglist);
        mv.addObject("blogId", blogId);
        return mv;
    }

    @RequestMapping(value = "/photos", method = {RequestMethod.GET})
    public ModelAndView toPhotosIndex() {
        ModelAndView modelAndView = new ModelAndView("/main_index/photos_index");
        //页面博客主按钮显示
        String userblogId;
        if (shiroUtils.getUserName() != null && !shiroUtils.getUserName().equals(Constant.nologgingName)) {
            userblogId = userservice.findUserByName(shiroUtils.getUserName()).getBlogId();
            if (blogId.equals(userblogId)) {
                modelAndView.addObject("buttonshow", true);
            }
        }
        //页面相册列表
        int pageNum = 0;
        int pageSize = Constant.photoBoxpageSzie;
        List<PhotosBox> list = photoservice.getBoxList(blogId, pageNum, pageSize);
        modelAndView.addObject("list", list);
        modelAndView.addObject("blogId", blogId);
        return modelAndView;
    }


    @RequestMapping(value = "/resource/", method = {RequestMethod.GET})
    public ModelAndView toresourceIndex() {
        ModelAndView modelandview = new ModelAndView("/main_index/resource_index");
        modelandview.addObject("blogId", blogId);
        return modelandview;
    }


    @RequestMapping(value = "/write/{articleId}", method = {RequestMethod.GET})
    public ModelAndView toWriteIndex(@PathVariable(value = "articleId") String articleId) {
        ModelAndView modelandview = new ModelAndView("/main_index/write_index");
        modelandview.addObject("articleId", articleId);
        modelandview.addObject("blogId", blogId);
        if (!articleId.equals(0)) {

        }
        return modelandview;
    }

    @RequestMapping(value = "/login", method = {RequestMethod.GET})
    public ModelAndView toLoginIndex() {
        ModelAndView modelandview = new ModelAndView("/main_index/login");
        modelandview.addObject("blogId", blogId);
        return modelandview;
    }



}
