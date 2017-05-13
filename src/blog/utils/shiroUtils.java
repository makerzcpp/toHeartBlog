package blog.utils;

import java.util.UUID;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;

public class shiroUtils {

	//进行shiro加密，返回加密后的结果
	public static String md5(String pass){
		String saltSource = "blog";	
		String hashAlgorithmName = "MD5";
		Object salt = new Md5Hash(saltSource);
		int hashIterations = 1024;			
		Object result = new SimpleHash(hashAlgorithmName, pass, salt, hashIterations);
		return (String) result;
	}
	
	//生产UUID
	public static String uuid(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
}
