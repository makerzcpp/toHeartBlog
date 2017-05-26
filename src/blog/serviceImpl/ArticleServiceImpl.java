package blog.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.bean.Article;
import blog.bean.PhotosBox;
import blog.dao.articleDao;
import blog.service.ArticleService;
import blog.utils.usuallyUtils;
@Service
public class ArticleServiceImpl implements ArticleService {
	@Autowired articleDao articledao ;
	
	@Override
	public void addArticle(String blogId, String headName, String headLine, String text, String cateId) {
		String articleId = usuallyUtils.uuid();
		String creatTime = usuallyUtils.getTime();
		int readNum = 0;
		int commentNum = 0;
		Article art = new Article(articleId,headName,creatTime,readNum,commentNum,cateId,blogId,text,headLine);
		articledao.addArticle(art);
	}

	@Override
	public List<Article> getArticleList(String blogId, int pageNum, int pageSize) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("blogId", blogId);
		map.put("pageNum", pageNum);
		map.put("pageSize", pageSize);
		List<Article> list = articledao.getArticleList(map);
		return list;
		
	}

	@Override
	public int getAllArticleNum(String blogId) {
		int num = articledao.getAllArticleNum(blogId);
		return num;
	}
}
