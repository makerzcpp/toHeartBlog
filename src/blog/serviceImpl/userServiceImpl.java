package blog.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.bean.User;
import blog.dao.userDao;
import blog.service.userService;
import blog.utils.shiroUtils;

@Service
public class userServiceImpl implements userService {
	@Autowired userDao userDao;
	
	@Override
	public boolean addUser(Map<String,Object> map) {
		boolean reslut;
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
		String creatTime = sdf.format(date);
		User user = new User();
		String username = (String) map.get("username");
		User finduser = userDao.findUser(username);	
		if(finduser==null){			
		user.setCreatTime(creatTime);	
		user.setUserId(shiroUtils.uuid());	
		user.setEmail((String) map.get("email"));
		user.setUserName(username);
		user.setUserPass((String) map.get("userpass"));
		userDao.addUser(user);
		reslut = true;
		}else{
		reslut = false;	
		}
		return reslut;
	}
	
	
	

}
