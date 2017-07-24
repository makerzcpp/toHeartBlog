package blog.bean;

import java.io.Serializable;

public class User implements Serializable {
private static final long serialVersionUID = -4287476886969445533L;


private String userName;
private String userCName;
private String userPass;
private String creatTime;
private String blogName;//博客名字
private String blogId;//博客Id
private String friendId;//友情推荐的用户ID
private String Email;
private String Phone;
private String Authentication;//是否认证
private String headImg;//头像

public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getUserCName() {
	return userCName;
}
public void setUserCName(String userCName) {
	this.userCName = userCName;
}
public String getUserPass() {
	return userPass;
}
public void setUserPass(String userPass) {
	this.userPass = userPass;
}
public String getCreatTime() {
	return creatTime;
}
public void setCreatTime(String creatTime) {
	this.creatTime = creatTime;
}
public String getBlogName() {
	return blogName;
}
public void setBlogName(String blogName) {
	this.blogName = blogName;
}
public String getBlogId() {
	return blogId;
}
public void setBlogId(String blogId) {
	this.blogId = blogId;
}
public String getFriendId() {
	return friendId;
}
public void setFriendId(String friendId) {
	this.friendId = friendId;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getPhone() {
	return Phone;
}
public void setPhone(String phone) {
	Phone = phone;
}
public String getAuthentication() {
	return Authentication;
}
public void setAuthentication(String authentication) {
	Authentication = authentication;
}
public String getHeadImg() {
	return headImg;
}
public void setHeadImg(String headImg) {
	this.headImg = headImg;
}
public User(String userName, String userCName, String userPass, String creatTime, String blogName, String blogId,
		String friendId, String email, String phone, String authentication, String headImg) {
	super();
	this.userName = userName;
	this.userCName = userCName;
	this.userPass = userPass;
	this.creatTime = creatTime;
	this.blogName = blogName;
	this.blogId = blogId;
	this.friendId = friendId;
	Email = email;
	Phone = phone;
	Authentication = authentication;
	this.headImg = headImg;
}
public User() {
	super();
}
@Override
public String toString() {
	return "User [userName=" + userName + ", userCName=" + userCName + ", userPass=" + userPass + ", creatTime="
			+ creatTime + ", blogName=" + blogName + ", blogId=" + blogId + ", friendId=" + friendId + ", Email="
			+ Email + ", Phone=" + Phone + ", Authentication=" + Authentication + ", headImg=" + headImg + "]";
}





}
