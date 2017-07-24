package blog.bean;

import java.io.Serializable;

public class Article implements Serializable{
private static final long serialVersionUID = -5903450094896283406L;

private String articleId; //文章Id
private String articleName; //文章名字
private String creatTime;  //创建时间
private int readNum;    //浏览数量
private int commentNum; //评论数量
private String categoryId; //类别ID
private String blogId;     //所属用户ID
private String articleText;//正文内容
private String articleHead;//文章引言



public Article() {
	super();
}
public Article(String articleId, String articleName, String creatTime, int readNum, int commentNum,
		String categoryId, String blogId, String articleText, String articleHead) {
	super();
	this.articleId = articleId;
	this.articleName = articleName;
	this.creatTime = creatTime;
	this.readNum = readNum;
	this.commentNum = commentNum;
	this.categoryId = categoryId;
	this.blogId = blogId;
	this.articleText = articleText;
	this.articleHead = articleHead;
}
public String getArticleId() {
	return articleId;
}
public void setArticleId(String articleId) {
	this.articleId = articleId;
}
public String getArticleName() {
	return articleName;
}
public void setArticleName(String articleName) {
	this.articleName = articleName;
}
public String getCreatTime() {
	return creatTime;
}
public void setCreatTime(String creatTime) {
	this.creatTime = creatTime;
}
public int getReadNum() {
	return readNum;
}
public void setReadNum(int readNum) {
	this.readNum = readNum;
}
public int getCommentNum() {
	return commentNum;
}
public void setCommentNum(int commentNum) {
	this.commentNum = commentNum;
}
public String getCategoryId() {
	return categoryId;
}
public void setCategoryId(String categoryId) {
	this.categoryId = categoryId;
}
public String getUserId() {
	return blogId;
}
public void setUserId(String userId) {
	this.blogId = userId;
}
public String getArticleText() {
	return articleText;
}
public void setArticleText(String articleText) {
	this.articleText = articleText;
}
public String getArticleHead() {
	return articleHead;
}
public void setArticleHead(String articleHead) {
	this.articleHead = articleHead;
}

}
