package blog.dao;

import java.util.List;
import java.util.Map;

import blog.bean.Article;

public interface ArticleDao {

	public void addArticle(Article article);
	
	public List<Article> getArticleList(Map<String,Object> map);
	
	public List<Article> getHotArticleList(Map<String,Object> map);
	
	public int getAllArticleNum(String blogId);
}
