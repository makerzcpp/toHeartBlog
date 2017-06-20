package blog.dao;

import java.util.List;
import java.util.Map;

import blog.bean.Photos;
import blog.bean.PhotosBox;

public interface PhotoDao {
	
 public void creatBox(PhotosBox photosbox);
 
 public List<PhotosBox> getBoxList(Map<String,Object> map);
 
 public List<Photos>  getPhoto(String boxId);
 
 public void addphoto(Photos photos);
 
 public void delPhotos(String[] array);
}
