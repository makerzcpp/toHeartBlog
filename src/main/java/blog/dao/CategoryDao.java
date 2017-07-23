package blog.dao;

import java.util.List;

import blog.bean.Category;

public interface CategoryDao {

	public List<Category> getCategoryList(String blogId);
	

}
