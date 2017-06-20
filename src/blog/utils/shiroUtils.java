package blog.utils;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;

import blog.Constant;

public class shiroUtils {

	//进行shiro加密，返回加密后的结果
	public static String md5(String pass){
		String saltSource = Constant.shiroPassSource;	
		String hashAlgorithmName = "MD5";
		Object salt = new Md5Hash(saltSource);
		int hashIterations = Constant.shiroPassNum;			
		Object result = new SimpleHash(hashAlgorithmName, pass, salt, hashIterations);
		String password = result.toString();
		return password;
	}
		
	
	//获取当前登录对象
	public static String getUserName(){
	String shiroUser = null;
	Subject currentUser = SecurityUtils.getSubject();
	shiroUser = (String) currentUser.getPrincipal();
	if (shiroUser == null) {
		 shiroUser = Constant.nologgingName;
	}	
	return shiroUser;
	}
}

