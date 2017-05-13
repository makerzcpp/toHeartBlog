package blog.dao;

import blog.bean.User;

public interface userDao {
	
public void addUser(User user);

public User findUser(String userName);

}
