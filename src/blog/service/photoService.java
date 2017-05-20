package blog.service;

import java.util.List;

import blog.bean.PhotosBox;

public interface photoService {

	public void creatPhotoBox(String name,String text,int type,String blogId);
	
	public List<PhotosBox> getBoxList(String blogId,int pageNum,int pageSize);
}
