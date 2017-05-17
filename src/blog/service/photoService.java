package blog.service;

import java.util.List;

import blog.bean.PhotosBox;

public interface photoService {

	public void creatPhotoBox(String name,String text,int type);
	
	public List<PhotosBox> getBoxList(String userName,int pageNum,int pageSize);
}
