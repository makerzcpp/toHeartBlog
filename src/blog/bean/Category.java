package blog.bean;

import java.io.Serializable;

public class Category implements Serializable{
private static final long serialVersionUID = 7857121030962151028L;

private String categoryId; //类别ID
private String userId;  //用户ID	
private String categoryName; //类别名字
private String articleNum; //文章数量
public String getCategoryId() {
	return categoryId;
}
public void setCategoryId(String categoryId) {
	this.categoryId = categoryId;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public String getArticleNum() {
	return articleNum;
}
public void setArticleNum(String articleNum) {
	this.articleNum = articleNum;
}

}
