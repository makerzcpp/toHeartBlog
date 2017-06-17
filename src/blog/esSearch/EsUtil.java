package blog.esSearch;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.HashMap;
import java.util.Map;
import org.elasticsearch.action.count.CountRequestBuilder;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexRequestBuilder;
import org.elasticsearch.action.search.SearchRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.sort.SortOrder;

/**
 * ElasticSearch工具类
 * 
 * @author szreachivan
 *
 */
public class EsUtil {
    
    private Client client;
    
    private static Map<String, EsUtil> esClientMap = new HashMap<String, EsUtil>();
    
    /**
     * 单例模式创建,一个集群只能有一个客户端
     * 
     * @author lisheng
     * @date 2017年5月18日 下午7:13:53
     * @return EsUtil
     * @param clusterName
     * @param address
     * @return
     */
    public static synchronized EsUtil getEsClientInstance(String clusterName, String address) {
        if(null == esClientMap.get(clusterName)) {
            EsUtil esClent = new EsUtil(clusterName, address);
            esClientMap.put(clusterName, esClent);
        }
        
        return esClientMap.get(clusterName);
    }
    
    /**
     * 初始化
     * 
     * @param ip
     */
    private EsUtil(String clusterName, String address) {
        // 设置集群名称
        try {
            // 设置集群名称
            // 设置client.transport.sniff为true来使客户端去嗅探整个集群的状态，把集群中其它机器的ip地址加到客户端中，这样做的好处是一般你不用手动设置集群里所有集群的ip到连接客户端，它会自动帮你添加，并且自动发现新加入集群的机器。
            // 设置index.refresh_interval为1s来减少shard刷新间隔
            //Settings settings = Settings.settingsBuilder().put("client.transport.sniff", "true").put("index.refresh_interval", "1s").put("cluster.name", clusterName).build();
            // 初始化连接客户端  集群方法
            //client = TransportClient.builder().settings(settings).build();
            
            // 初始化连接客户端 单机测试
            client = TransportClient.builder().build()
                    .addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("address"), 9300));
            System.out.println("开始创建ES搜索服务器：" + address + "的连接");
            if(CommonTools.isNotNull(address)) {
                String[] addressArray = address.split(",");
                for(String add : addressArray) {
                    String[] hostport = add.split(":");
                    ((TransportClient) client).addTransportAddress(
                            new InetSocketTransportAddress(new InetSocketAddress(hostport[0], CastUtil.castInt(hostport[1]))));
                }
            }
            //client = ((TransportClient) client);
            System.out.println("成功创建ES搜索服务器：" + address + "的连接");
        } catch (Exception e) {
            System.out.println("创建ES搜索服务器：" + address + "的连接 失败");
            
        }
        
        
        
       
        
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
    public void createIndex(String EsIndex, String EsType, String EsId, String jsonStr) {
        try {
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
            Log.warnStackTrace(e);
        }
    }
    
    /**
     * 更新索引
     * 
     * @param EsIndex
     *            索引名称(数据库名)
     * @param EsType
     *            索引类型(表名)
     * @param EsId
     *            索引ID
     * @param jsonStr
     *            要更新索引对象的json字符串
     */
    public void updateIndex(String EsIndex, String EsType, String EsId, String jsonStr) {
        try {
            if(client == null) {
                System.out.println("ElasticSearch服务器连接不上，开始更新类型为：" + EsType + "，id为:" + EsId + "的索引，索引对象的json字符串为：" + jsonStr);
                return;
            }
            
            System.out.println("开始更新类型为：" + EsType + "，id为:" + EsId + "的索引，索引对象的json字符串为：" + jsonStr);
            IndexRequest indexRequest = new IndexRequest(EsIndex, EsType, EsId).source(jsonStr);
            UpdateRequest updateRequest = null;
            updateRequest = new UpdateRequest(EsIndex, EsType, EsId).doc(jsonStr).upsert(indexRequest);
            client.update(updateRequest).get();
            System.out.println("成功更新类型为：" + EsType + "，id为:" + EsId + "的索引，索引对象的json字符串为：" + jsonStr);
        } catch (Exception e) {
            System.out.println("更新类型为：" + EsType + "，id为：" + EsId + "的索引，索引对象的json字符串为：" + jsonStr + " 失败");
            Log.warnStackTrace(e);
        }
    }
    
    /**
     * 删除索引
     * 
     * @param EsIndex
     *            索引名称(数据库名)
     * @param EsType
     *            索引类型(表名)
     * @param EsId
     *            索引ID
     */
    public void deleteIndex(String EsIndex, String EsType, String EsId) {
        try {
            if(client == null) {
                System.out.println("ElasticSearch服务器连接不上，开始删除类型为：" + EsType + "，id为：" + EsId + "的索引");
                return;
            }
            
            System.out.println("开始删除类型为：" + EsType + "，id为：" + EsId + "的索引");
            client.prepareDelete(EsIndex, EsType, EsId).get();
            System.out.println("成功删除类型为：" + EsType + "，id为：" + EsId + "的索引");
        } catch (Exception e) {
            System.out.println("删除类型为：" + EsType + "，id为：" + EsId + "的索引 失败");
            Log.warnStackTrace(e);
        }
    }
    
    /**
     * 从索引中查询单条数据
     * 
     * @author lisheng
     * @date 2017年5月25日 下午5:45:10
     * @return String
     * @param EsIndex
     *            索引名称(数据库名)
     * @param EsType
     *            索引类型(表名)
     * @param EsId
     *            索引ID
     * @return
     */
    public String getIndex(String EsIndex, String EsType, String EsId) {
        String json = "";
        try {
            if(client == null) {
                System.out.println("ElasticSearch服务器连接不上，开始查询类型为：" + EsType + "，id为：" + EsId + "的索引数据");
                return null;
            }
            System.out.println("开始查询类型为：" + EsType + "，id为：" + EsId + "的索引数据");
            GetResponse response = client.prepareGet(EsIndex, EsType, EsId).get();
            if(response.isExists()) { // 检查文档是否存在
                json = response.getSourceAsString(); // 访问_source字段
                System.out.println("成功查询类型为：" + EsType + "，id为：" + EsId + "的索引数据");
            }
            
        } catch (Exception e) {
            System.out.println("查询类型为：" + EsType + "，id为：" + EsId + "的索引数据 失败");
            Log.warnStackTrace(e);
        }
        return json;
    }
    
    /**
     * 分页查询
     * 
     * @param queryBuilder
     * @param postFilter
     * @param EsIndex
     *            索引名称(数据库名)
     * @param EsType
     *            索引类型(表名)
     * @param orderName
     *            排序字段 可为空
     * @param orderBy
     *            升序/降序 可为空
     * @param from
     *            分页的开始序号,从0开始 可为0
     * @param size
     *            分页的大小 可为0
     * @return
     */
    public SearchHits searchHits(QueryBuilder queryBuilder, String EsIndex, String EsType, String orderName, String orderBy,
            int from, int size) {
        try {
            if(client == null) {
                System.out.println("ElasticSearch服务器连接不上，查询类型为：" + EsType + "的索引数据");
                return null;
            }
            
            // SearchResponse sResponse =
            // client.prepareSearch(EsIndex).setTypes(EsType).addSort(orderName, order)
            // .setQuery(queryBuilder).setFrom(from).setSize(size).execute().actionGet();
            
            // 创建查询索引，参数EsIndex表示要查询的索引库为EsIndex
            SearchRequestBuilder searchRequestBuilder = client.prepareSearch(EsIndex);
            // 设置查询索引类型
            searchRequestBuilder.setTypes(EsType);
            // 设置查询类型
            // 1、SearchType.DFS_QUERY_THEN_FETCH = 精确查询
            // 2、SearchType.SCAN = 扫描查询,无序
            // 3、SearchType.COUNT = 不设置的话,这个为默认值,还有的自己去试试吧
            searchRequestBuilder.setSearchType(SearchType.DEFAULT);
            
            // 设置查询条件
            searchRequestBuilder.setQuery(queryBuilder);
            
            // 分页设置
            //if(from != 0 && size != 0) {
                searchRequestBuilder.setFrom(from).setSize(size);
           // }
            // else{
            // searchRequestBuilder.setSize(999999999);
            // }
            
            // 排序设置
            SortOrder order = SortOrder.DESC;
            
            if(CommonTools.isNotNull(orderName)) {
                if(orderBy.equals("asc")) {
                    order = SortOrder.ASC;
                }
                searchRequestBuilder.addSort(orderName, order);
            } else {
                // 默认按照得分排序
                searchRequestBuilder.addSort("_score", SortOrder.DESC);
            }
            
            // 设置是否按查询匹配度排序
            searchRequestBuilder.setExplain(true);
            
            // 执行搜索,返回搜索响应信息
            SearchResponse response = searchRequestBuilder.execute().actionGet();
            
            return response.getHits();
        } catch (Exception e) {
            System.out.println("查询类型为：" + EsType + "的索引数据 失败");
           
            return null;
        }
    }
    
    /**
     * 通用查询，查询总记录数
     * @author lisheng
     * @date 2017年5月25日 下午8:33:56
     * @return long
     * @param queryBuilder
     * @param EsIndex
     * @param EsType
     * @return
     */
    public long getSearchCount(QueryBuilder queryBuilder, String EsIndex, String EsType) {
        // 创建查询索引
        CountRequestBuilder countRequestBuilder = client.prepareCount(EsIndex);
        // 设置查询索引类型
        countRequestBuilder.setTypes(EsType);
        
        // 设置查询条件
        countRequestBuilder.setQuery(queryBuilder);
        
        // 最后就是返回搜索响应信息
        long count = countRequestBuilder.execute().actionGet().getCount();
        
        return count;
        
    }
    
}
