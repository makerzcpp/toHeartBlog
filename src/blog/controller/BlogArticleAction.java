package blog.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import blog.Constant;
import blog.utils.StringUtils;
import blog.utils.usuallyUtils;

@Controller
@RequestMapping("/text")
public class BlogArticleAction {

	
	  	@ResponseBody
	    @RequestMapping(value="/images")
	    public Map<String,Object> images (MultipartFile upfile, HttpServletRequest request, HttpServletResponse response){
	        Map<String,Object> params = new HashMap<String,Object>();
	        String visitUrl ="";
	        try{
	        	//文件保存目录路径  
	    		ServletContext servletContext=request.getSession().getServletContext(); 
	            String basePath = servletContext.getRealPath("")+Constant.UEimgPath;
	            //创建文件夹  
	            File dirFile = new File(basePath);  
	            if (!dirFile.exists()) {  
	                dirFile.mkdirs();  
	            }  
	            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");  
	            String ymd = sdf.format(new Date());  
	            basePath += "/" + ymd + "/";  
	             String ext = StringUtils.getExt(upfile.getOriginalFilename());
	             String fileName = String.valueOf(System.currentTimeMillis()).concat("_").concat(StringUtils.getRandom(6)).concat(".").concat(ext);
	             StringBuilder sb = new StringBuilder();
	             //拼接保存路径
	             sb.append(basePath).append(fileName);
	             visitUrl = "/toHeartBlog/"+Constant.UEimgPath+"/" + ymd + "/"+fileName;
	             File f = new File(sb.toString());
	             if(!f.exists()){
	                 f.getParentFile().mkdirs();
	             }
	             OutputStream out = new FileOutputStream(f);
	             FileCopyUtils.copy(upfile.getInputStream(), out);
	             params.put("state", "SUCCESS");
	             params.put("url", visitUrl);
	             params.put("size", upfile.getSize());
	             params.put("original", fileName);
	             params.put("type", upfile.getContentType());
	        } catch (Exception e){
	             params.put("state", "ERROR");
	        }
	         return params;
	    }
}
