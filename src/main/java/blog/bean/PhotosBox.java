package blog.bean;

import java.io.Serializable;

public class PhotosBox implements Serializable{

	private static final long serialVersionUID = -8724262949528415949L;
	
	private String boxId;
	private int imgNum;//图片数量
	private String boxName;//相册名字
	private String boxText;
	private String CreatTime;
	private String blogId;
	private int boxType;//类型  0图片  1视频
	private String imgHead;//封面图片
	
	public String getBoxId() {
		return boxId;
	}
	public void setBoxId(String boxId) {
		this.boxId = boxId;
	}
	public int getImgNum() {
		return imgNum;
	}
	public void setImgNum(int imgNum) {
		this.imgNum = imgNum;
	}
	public String getBoxName() {
		return boxName;
	}
	public void setBoxName(String boxName) {
		this.boxName = boxName;
	}
	public String getBoxText() {
		return boxText;
	}
	public void setBoxText(String boxText) {
		this.boxText = boxText;
	}
	public String getCreatTime() {
		return CreatTime;
	}
	public void setCreatTime(String creatTime) {
		CreatTime = creatTime;
	}
	
	public String getBlogId() {
		return blogId;
	}
	public void setBlogId(String blogId) {
		this.blogId = blogId;
	}
	public int getBoxType() {
		return boxType;
	}
	public void setBoxType(int boxType) {
		this.boxType = boxType;
	}		
	public String getImgHead() {
		return imgHead;
	}
	public void setImgHead(String imgHead) {
		this.imgHead = imgHead;
	}
	

	public PhotosBox(String boxId, int imgNum, String boxName, String boxText, String creatTime, String blogId,
			int boxType, String imgHead) {
		super();
		this.boxId = boxId;
		this.imgNum = imgNum;
		this.boxName = boxName;
		this.boxText = boxText;
		CreatTime = creatTime;
		this.blogId = blogId;
		this.boxType = boxType;
		this.imgHead = imgHead;
	}
	public PhotosBox() {
		super();
	}
	


}
