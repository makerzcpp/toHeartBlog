package blog.service;

import java.util.List;

import blog.bean.Article;

public interface ArticleService {

	public void addArticle(String blogId,String headName,String headLine,String text,String cateId );
	
	public List<Article> getArticleList(String blogId,int pageNum,int pageSize );
	
	public List<Article> getHotArticleList(String blogId,int pageNum,int pageSize );
	
	public int getAllArticleNum(String blogId);
}
