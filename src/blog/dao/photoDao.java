package blog.dao;

import java.util.List;
import java.util.Map;

import blog.bean.PhotosBox;

public interface photoDao {
	
 public void creatBox(PhotosBox photosbox);
 
 public List<PhotosBox> getBoxList(Map<String,Object> map);
}