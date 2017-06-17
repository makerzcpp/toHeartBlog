package blog.esSearch;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import org.elasticsearch.action.index.IndexRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.QueryStringQueryBuilder;
import org.elasticsearch.index.query.WildcardQueryBuilder;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;



import blog.bean.Photos;



public class esTest {
	static Client client;
	static List<String> list = new ArrayList<String>();
	static {
	String data1 = JsonUtil.model2Json(new Photos("1", "11111", "20161111", "11111区别...",1));
    String data2 = JsonUtil.model2Json(new Photos("2", "1222222", "20162222", "2S22222区别...",1));
    String data3 = JsonUtil.model2Json(new Photos("3", "333333", "201633333", "333333333333要的区别...",1));
    String data4 = JsonUtil.model2Json(new Photos("4", "44444", "2016444449", "444444444444444要的区别...",1));
    String data5 = JsonUtil.model2Json(new Photos("5", "555555", "201655555", "5S5555555555555要的区别...",1));
    list.add(data1);
    list.add(data2);
    list.add(data3);
    list.add(data4);
    list.add(data5);
	}
	
	
	
	
	
	
	
	
	
	/**
     * 创建索引
     * 
     * @param EsIndex
     *            索引名称(数据库名)
     * @param EsType
     *            索引类型(表名)
     * @param EsId
     *            索引ID
     * @param jsonStr
     *            要创建索引对象的json字符串
     * @return
     */
   /* public static void main(String[] args) {
    	 String EsType="test";
    	String EsIndex="text";
    	 String EsId="1123";
    	 String jsonStr=list.get(1);
        try {
        	  client = TransportClient.builder().build()
                      .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("192.168.0.84"), 9300));
            if(client == null) {
                System.out.println("ElasticSearch服务器连接不上，开始创建类型为：" + EsType + "，id为：" + EsId + "的索引，索引对象的json字符串为：" + jsonStr);
                return;
            }
            
            System.out.println("开始创建类型为：" + EsType + "，id为：" + EsId + "的索引，索引对象的json字符串为：" + jsonStr);
            IndexRequestBuilder builder = client.prepareIndex(EsIndex, EsType, EsId);
            builder = builder.setSource(jsonStr);
            builder.execute().actionGet();
            System.out.println("成功创建类型为：" + EsType + "，id为：" + EsId + "的索引，索引对象的json字符串为：" + jsonStr);
        } catch (Exception e) {
        	System.out.println("创建类型为：" + EsType + "，id为：" + EsId + "的索引，索引对象的json字符串为：" + jsonStr + " 失败");
            
        }
        client.close();
    }*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	 //穿件索引
	   /* public static void main(String[] args) throws UnknownHostException {
	        //创建客户端 
			// client startup
		  Client client = TransportClient.builder().build()
                  .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("192.168.0.84"), 9300));
			List<String> jsonData = list;

			for (int i = 0; i < jsonData.size(); i++) {
			    IndexResponse response = client.prepareIndex("blog", "photos").setSource(jsonData.get(i)).get();
			    if (response.isCreated()) {
			       System.out.println("创建成功!");
			    }
			}
			client.close();

	    }*/
	
	
	
	//创建查询
	public static void main(String[] args) {
	        // client startup
	        try {
	            Client client = TransportClient.builder().build()
	                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("192.168.0.84"), 9300));
	            if(client == null) {
	                System.out.println("ElasticSearch服务器连接不上，开始更新类型为：");
	                return;
	            }
	            QueryStringQueryBuilder queryBuilder =new QueryStringQueryBuilder("2S22222区别...");
	           // queryBuilder.field("photoUrl");
	            //QueryBuilders.fuzzyQuery("photoUrl", "2S222?2区别...");
	          //  QueryBuilder qb2= QueryBuilders.multiMatchQuery("SVN与Git最主要的区别...", "photoText","photoUrl");
	            //WildcardQueryBuilder queryBuilder2= QueryBuilders.wildcardQuery("photoUrl", "*区别*");
	            //QueryBuilder boolQueryBuilder = QueryBuilders.matchQuery("photoUrl","2S22222区别...");  
	          //name中必须含有jack,interest中必须含有read,相当于and 
	            //BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();  
	           // boolQueryBuilder.should(queryBuilder2);  
	            
	            
	            
	            
	            SearchResponse response = client.prepareSearch("text").setTypes("test").setQuery(queryBuilder ).execute()
	                    .actionGet();

	            SearchHits hits = response.getHits();
	            if (hits.totalHits() > 0) {
	            	int i =1;
	                for (SearchHit hit : hits) {
	                    System.out.println("score:"+hit.getScore()+":\t"+hit.getSource());// .get("title")
	                    i++;
	                    System.out.println(i);// .get("title")
	                }
	            } else {
	                System.out.println("搜到0条结果");
	            }

	        } catch (UnknownHostException e) {
	            e.printStackTrace();
	        }

	    }
}
