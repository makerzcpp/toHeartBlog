package blog.service;

import java.util.List;

import blog.bean.Category;

public interface categoryService {

	List<Category> findCategoryList(String userName);

	
}
