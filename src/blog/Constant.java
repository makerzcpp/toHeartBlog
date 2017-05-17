package blog;
/*
 * 信息记载接口
 */
public interface Constant {
	//相册封面路径
	String PhotoBoxHeadImg="/www/images/photosindex/page1_img1.jpg";
	//加密次数
	int shiroPassNum = 1024;
	//加密盐值
	String shiroPassSource = "blog";
	//相册每页展示数量
	int photoBoxpageSzie = 8;
}
