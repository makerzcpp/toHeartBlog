package blog.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.Constant;
import blog.bean.Photos;
import blog.bean.PhotosBox;
import blog.dao.PhotoDao;
import blog.service.photoService;
import blog.utils.StringUtils;
import blog.utils.usuallyUtils;

@Service
public class photoServiceImpl implements photoService {

	@Autowired PhotoDao photodao;

	@Override
	public void creatPhotoBox(String name,String text,int type,String blogId) {
		String boxId = usuallyUtils.uuid();
		String boxName = name;
		String boxText = text;
		String creatTime = usuallyUtils.getTime();
		int imgNum = 0;
		int boxType = type;
		String imgHead = Constant.PhotoBoxHeadImg;
		PhotosBox box = new PhotosBox(boxId,imgNum,boxName,boxText,creatTime,blogId,boxType,imgHead);
		photodao.creatBox(box);		
	}

	@Override
	public List<PhotosBox> getBoxList(String blogId,int pageNum,int pageSize) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("blogId", blogId);
		map.put("pageNum", pageNum);
		map.put("pageSize", pageSize);
		List<PhotosBox> list = photodao.getBoxList(map);
		return list;
	}

	@Override
	public List<Photos> getPhotos(String boxId) {
		List<Photos> list = photodao.getPhoto(boxId);
		return list;
	}

	@Override
	public void addphoto(String photoUrl, String boxId) {
		String photoId = usuallyUtils.uuid();
		String photoText = "";
		int okNum = 0;
		Photos photo = new Photos(photoId,boxId,photoText,photoUrl,okNum);
		photodao.addphoto(photo);
		
	}

	@Override
	public boolean delphotos(String photoIds) {
		boolean result;
		if(StringUtils.isNotEmpty(photoIds)){
			String[] strArray = StringUtils.castStringArray(photoIds, StringUtils.MINSTOP);
			photodao.delPhotos(strArray);
			result = true;
		}else{
		result = false;
		}
		return result;		
	}  
}
