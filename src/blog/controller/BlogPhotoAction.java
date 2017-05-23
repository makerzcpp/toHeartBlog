package blog.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import blog.Constant;
import blog.bean.Photos;
import blog.service.photoService;
import blog.service.userService;
import blog.utils.Result;
import blog.utils.shiroUtils;

@Controller
@RequestMapping("/photo")
public class BlogPhotoAction{
	
	@Autowired photoService photoservice;	
	@Autowired userService userservice;
	
	@RequestMapping(value="/creat/{blogId}", method={RequestMethod.GET})
	public ModelAndView creatPhoto(@PathVariable(value="blogId") String blogId){		
		String userName = shiroUtils.getUserName();
		ModelAndView modelAndView = new ModelAndView();
		if(userName!=null&&!userName.equals(Constant.nologgingName)){
		String loginblogId = userservice.findUserByName(userName).getBlogId();
		if(loginblogId.equals(blogId)){
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
	@RequestMapping(value="/creat/{blogId}", method={RequestMethod.POST})
	public Result creatPhotoparam(@PathVariable(value="blogId") String blogId,@RequestParam("na") String na,@RequestParam("te") String te,@RequestParam("fen") int fen){	
		boolean result =true;
		try{
		photoservice.creatPhotoBox(na,te,fen,blogId);
		}catch (Exception e) {
			result = false;
		}
		return new Result(result);	
	}
	
	@RequestMapping(value="/photoslist/{blogId}/{boxId}", method={RequestMethod.GET})
	public ModelAndView toPhotosList(@PathVariable(value="blogId") String blogId,@PathVariable(value="boxId") String boxId) {
		ModelAndView modelAndView = new ModelAndView("/photos/photos_list");
		List<Photos> list = photoservice.getPhotos(boxId);
		modelAndView.addObject("photoList", list);
		modelAndView.addObject("boxId", boxId);
		modelAndView.addObject("blogId", blogId);
		return modelAndView;
	}
	
	@RequestMapping(value="/add/{boxId}", method={RequestMethod.GET})
	public ModelAndView addPhotos(@PathVariable(value="boxId") String boxId) {
		ModelAndView modelAndView = new ModelAndView("/photos/photosUpload");
		modelAndView.addObject("boxId", boxId);
		return modelAndView;
	}
	
	@RequestMapping(value="/add/{boxId}", method={RequestMethod.POST})
	public void addPhotospost(@PathVariable(value="boxId") String boxId, HttpServletRequest request,HttpServletResponse response ) throws IOException {
		ServletContext servletContext=request.getSession().getServletContext(); 
		String newFileName=""; 
	        PrintWriter out = response.getWriter();  
	          
	        //文件保存目录路径  
	        String savePath = servletContext.getRealPath("")+Constant.configPath;  
	        //String savePath = this.getServletContext().getRealPath("/") + configPath;  
	          
	        // 临时文件目录   
	        String tempPath = servletContext.getRealPath("/") + Constant.dirTemp;  
	          
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");  
	        String ymd = sdf.format(new Date());  
	        savePath += "/" + ymd + "/";  
	        //创建文件夹  
	        File dirFile = new File(savePath);  
	        if (!dirFile.exists()) {  
	            dirFile.mkdirs();  
	        }  
	          
	        tempPath += "/" + ymd + "/"; 
	        //创建临时文件夹  
	        File dirTempFile = new File(tempPath);  
	        if (!dirTempFile.exists()) {  
	            dirTempFile.mkdirs();  
	        }  
	          
	        DiskFileItemFactory  factory = new DiskFileItemFactory();  
	        factory.setSizeThreshold(20 * 1024 * 1024); //设定使用内存超过5M时，将产生临时文件并存储于临时目录中。     
	        factory.setRepository(new File(tempPath)); //设定存储临时文件的目录。     
	        ServletFileUpload upload = new ServletFileUpload(factory);  
	        upload.setHeaderEncoding("UTF-8");  
	        try {  
	            List items = upload.parseRequest(request);  
	            System.out.println("items = " + items);  
	            Iterator itr = items.iterator();  
	              
	            while (itr.hasNext())   
	            {  
	                FileItem item = (FileItem) itr.next();  
	                String fileName = item.getName();  
	                long fileSize = item.getSize();  
	                if (!item.isFormField()) {  
	                    String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();  
	                    SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");  
	                     newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileExt;  
	                    try{  
	                        File uploadedFile = new File(savePath, newFileName);  
	                        
	                        OutputStream os = new FileOutputStream(uploadedFile);  
	                        InputStream is = item.getInputStream();  
	                        byte buf[] = new byte[1024];//可以修改 1024 以提高读取速度  
	                        int length = 0;    
	                        while( (length = is.read(buf)) > 0 ){    
	                            os.write(buf, 0, length);    
	                        }    
	                        //关闭流    
	                        os.flush();  
	                        os.close();    
	                        is.close();    
	                        System.out.println("上传成功！路径："+savePath+"/"+newFileName);  
	                        out.print(savePath+"/"+newFileName);  
	                    }catch(Exception e){  
	                        e.printStackTrace();  
	                    }  
	                }else {  
	                    String filedName = item.getFieldName();  
	                    System.out.println("===============");   
	                    System.out.println(new String(item.getString().getBytes("iso-8859-1"),
	                    		"utf-8"));  
	                    System.out.println("FieldName："+filedName);  
	                    // 获得裁剪部分的坐标和宽高
	                    System.out.println("String："+item.getString());  
	                }             
	            }   
	              
	        } catch (FileUploadException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	        out.flush();  
	        out.close(); 
	        //插入数据库
	        String photoUrl = Constant.configPath+"/" + ymd + "/"+newFileName;
	        photoservice.addphoto(photoUrl,boxId);
	}
	
	@ResponseBody
	@RequestMapping(value="/delete", method={RequestMethod.POST})
	public Result delPhotos(@RequestParam(value="photoIds") String photoIds) {
		boolean success = photoservice.delphotos(photoIds);
		return new Result(success);
	}
}
