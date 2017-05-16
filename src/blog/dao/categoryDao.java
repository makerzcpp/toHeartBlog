package blog.dao;

import java.util.List;

import blog.bean.Category;

public interface categoryDao {

	public List<Category> getCategoryList(String userName);
}
