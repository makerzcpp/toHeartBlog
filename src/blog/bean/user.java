package blog.bean;

import java.io.Serializable;

public class user implements Serializable {
private static final long serialVersionUID = -4287476886969445533L;

private String userId;
private String userName;
private String userPass;
private String creatTime;
private String blogName;//博客名字
private String friendId;//友情推荐的用户ID
private String Email;
private String Phone;
private String Authentication;//是否认证
private String headImg;//头像
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
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
public static long getSerialversionuid() {
	return serialVersionUID;
}



}
