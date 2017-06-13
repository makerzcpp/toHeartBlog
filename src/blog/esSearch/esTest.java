package blog.esSearch;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;

import blog.bean.Photos;



public class esTest {
	static Client client;
	static List<String> list = new ArrayList<String>();
	static {
	String data1 = JsonUtil.model2Json(new Photos("1", "1git简介", "2016-06-19", "1SVN与Git最主要的区别...",1));
    String data2 = JsonUtil.model2Json(new Photos("2", "2git简介", "2016-06-19", "2SVN与Git最主要的区别...",1));
    String data3 = JsonUtil.model2Json(new Photos("3", "3git简介", "2016-06-19", "3SVN与Git最主要的区别...",1));
    String data4 = JsonUtil.model2Json(new Photos("4", "4git简介", "2016-06-19", "4SVN与Git最主要的区别...",1));
    String data5 = JsonUtil.model2Json(new Photos("5", "5git简介", "2016-06-19", "5SVN与Git最主要的区别...",1));
    list.add(data1);
    list.add(data2);
    list.add(data3);
    list.add(data4);
    list.add(data5);
	}
	  public static void main(String[] args) throws UnknownHostException {
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

	    }
}
