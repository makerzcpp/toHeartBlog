package blog.service;

import java.util.Map;

import blog.bean.User;



public interface userService {

	//添加用户
	public boolean addUser(Map<String,Object> map);
	
	public User findUserByName(String userName);
}
