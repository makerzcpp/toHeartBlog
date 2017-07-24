package blog.esSearch;

import java.io.IOException;

import org.elasticsearch.common.xcontent.XContentBuilder;
import org.elasticsearch.common.xcontent.XContentFactory;

import blog.bean.Photos;

public class JsonUtil {
    public static String model2Json(Photos photos) {
        String jsonData = null;
        try {
            XContentBuilder jsonBuild = XContentFactory.jsonBuilder();
            jsonBuild.startObject().field("photoId", photos.getPhotoId()).field("boxId", photos.getBoxId())
                    .field("photoText", photos.getPhotoText()).field("photoUrl", photos.getPhotoUrl())
                    .field("okNum", photos.getOkNum()).endObject();

            jsonData = jsonBuild.string();
            //System.out.println(jsonData);

        } catch (IOException e) {
            e.printStackTrace();
        }
        return jsonData;
    }
}
