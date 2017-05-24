package blog.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import blog.utils.StringUtils;
import blog.utils.usuallyUtils;

@Controller
@RequestMapping("/text")
public class BlogArticleAction {

	
	  	@ResponseBody
	    @RequestMapping(value="/images")
	    public Map<String,Object> images (MultipartFile upfile, HttpServletRequest request, HttpServletResponse response){
	        Map<String,Object> params = new HashMap<String,Object>();
	        try{
	             String basePath =usuallyUtils.getValue("UE.uploading.url");
	             String visitUrl =usuallyUtils.getValue("UE.visit.url");
	             if(basePath == null || "".equals(basePath)){
	                 basePath = "d:/UE/static";  //与properties文件中UE.uploading.url相同，未读取到文件数据时为basePath赋默认值
	             }
	             if(visitUrl == null || "".equals(visitUrl)){
	                 visitUrl = "/upload/"; //与properties文件中UE.visit.url相同，未读取到文件数据时为visitUrl赋默认值
	             }
	             String ext = StringUtils.getExt(upfile.getOriginalFilename());
	             String fileName = String.valueOf(System.currentTimeMillis()).concat("_").concat(StringUtils.getRandom(6)).concat(".").concat(ext);
	             StringBuilder sb = new StringBuilder();
	             //拼接保存路径
	             sb.append(basePath).append("/").append(fileName);
	             visitUrl = visitUrl.concat(fileName);
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
