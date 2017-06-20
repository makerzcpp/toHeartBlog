package blog.serviceImpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.bean.User;
import blog.dao.UserDao;
import blog.service.userService;
import blog.utils.usuallyUtils;

@Service
public class userServiceImpl implements userService {
	@Autowired UserDao userDao;
	
	@Override
	public boolean addUser(Map<String,Object> map) {
		boolean reslut;		
		String creatTime = usuallyUtils.getTime();
		User user = new User();
		String username = (String) map.get("username");
		User finduser = userDao.findUser(username);	
		if(finduser==null){			
		user.setCreatTime(creatTime);			
		user.setEmail((String) map.get("email"));
		user.setUserName(username);
		user.setUserPass((String) map.get("userpass"));
		user.setBlogId(usuallyUtils.uuid());
		userDao.addUser(user);
		reslut = true;
		}else{
		reslut = false;	
		}
		return reslut;
	}

	@Override
	public User findUserByName(String userName) {
		User finduser = userDao.findUser(userName);	
		return finduser;
	}
	
	
	

}
