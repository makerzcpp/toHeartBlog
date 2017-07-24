package blog.security;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import blog.bean.User;
import blog.dao.UserDao;

public class MyRealm extends AuthorizingRealm {
	
	@Autowired UserDao userDao;
	
	String pass;

	/**
	 * 授权:
	 * 
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();		
		Object principal = principalCollection.getPrimaryPrincipal();//获取登录的用户名	
		if("admin".equals(principal)){               //两个if根据判断赋予登录用户权限
			info.addRole("admin");
		}
		if("user".equals(principal)){
			info.addRole("list");
		}
		
		info.addRole("user");
		
		return info;
	}

	/*
	 * 用户验证
	 * 
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		System.out.println("-----"+token.getPrincipal());
		
		
		//1. token 中获取登录的 username! 注意不需要获取password.
		Object principal = token.getPrincipal();
		
		//2. 利用 username 查询数据库得到用户的信息. 
		User user = userDao.findUser((String) principal);	
		System.out.println(user+"--"+user.getUserPass());
		if(user!=null){
			pass=user.getUserPass();
		}
		String credentials = pass;
		//3.设置盐值 ，（加密的调料，让加密出来的东西更具安全性，一般是通过数据库查询出来的）
		String source = "blog";
		ByteSource credentialsSalt = new Md5Hash(source);
		
		//当前 Realm �? name
		String realmName = getName();
		//返回值实例化
		SimpleAuthenticationInfo info = 
				new SimpleAuthenticationInfo(principal, credentials, 
						credentialsSalt, realmName);
		
		return info;
	}

	//init-method 配置. 
	public void setCredentialMatcher(){
		HashedCredentialsMatcher  credentialsMatcher = new HashedCredentialsMatcher();
		
		credentialsMatcher.setHashAlgorithmName("MD5");//MD5算法加密
		credentialsMatcher.setHashIterations(1024);//1024次循环加密
		
		setCredentialsMatcher(credentialsMatcher);
	}
	
	
	//用来测试的算出密码password颜值加密后的结果，下面方法用于新增用户添加到数据库操作的，我这里就直接用main获得，直接数据库添加了，省时间
/*	public static void main(String[] args) {
		String saltSource = "abcdefg";	
		String hashAlgorithmName = "MD5";
		String credentials = "password";
		Object salt = new Md5Hash(saltSource);
		int hashIterations = 1024;			
		Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
		System.out.println(result);
	}*/

}
