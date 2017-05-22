package blog.bean;

import java.io.Serializable;

public class Photos implements Serializable{

	private static final long serialVersionUID = -6553580817418110001L;
	
	private String photoId;  
	
	private String boxId;  //所在相册Id
	
	private String photoText; //图片说明
	
	private String photoUrl;
		
	private int okNum; //点赞数
	
	

	public Photos() {
		super();
	}

	public Photos(String photoId, String boxId, String photoText, String photoUrl, int okNum) {
		super();
		this.photoId = photoId;
		this.boxId = boxId;
		this.photoText = photoText;
		this.photoUrl = photoUrl;
		this.okNum = okNum;
	}

	public String getPhotoId() {
		return photoId;
	}

	public void setPhotoId(String photoId) {
		this.photoId = photoId;
	}

	public String getBoxId() {
		return boxId;
	}

	public void setBoxId(String boxId) {
		this.boxId = boxId;
	}

	public String getPhotoText() {
		return photoText;
	}

	public void setPhotoText(String photoText) {
		this.photoText = photoText;
	}

	public String getPhotoUrl() {
		return photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

	public int getOkNum() {
		return okNum;
	}

	public void setOkNum(int okNum) {
		this.okNum = okNum;
	}
	
	

}
