package blog.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.bean.Category;
import blog.dao.categoryDao;
import blog.service.categoryService;

@Service
public class categoryServiceImpl implements categoryService {
	@Autowired categoryDao categorydao ;
	
	@Override
	public List<Category> findCategoryList(String userName) {
		List<Category> list = categorydao.getCategoryList(userName);
		return list;
	}

}
