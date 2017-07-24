package blog.service;

import java.util.List;

import blog.bean.Photos;
import blog.bean.PhotosBox;

public interface photoService {

	public void creatPhotoBox(String name,String text,int type,String blogId);
	
	public List<PhotosBox> getBoxList(String blogId,int pageNum,int pageSize);
	
	public List<Photos> getPhotos(String boxId);
	
	public void addphoto(String photoUrl,String boxId);

	public boolean delphotos(String photoIds);
	
}
