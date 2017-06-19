<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图博</title>
<meta name="keywords" content="图片博客，旅游，摄影，美图，纪实摄影，老照片，写真">
<meta name="description" content="图片博客是新浪博客中所有旅游、摄影、写真、老照片的集合。有图有真相，图片博客展示了最耀眼的娱乐明星博客、最美丽的摄影博客、最诱人的美食博客">
<!-- 头部和脚步 -->
<link rel='stylesheet' id='_bootstrap-css'  href='${BASE}/www/css/bootstrap.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='_main-css'  href='${BASE}/www/css/main_1.css' type='text/css' media='all' />
<link type="text/css" data-themecolor="default" rel='stylesheet' href="${BASE}/www/css/main-default.css"> 
<!-- 头部和脚步END -->
<link rel="stylesheet" type="text/css" href="${BASE}/www/css/photoblog/index.css" />
<script type="text/javascript" src="${BASE}/www/js/photoblog/scrollpic.js"></script>
</head>
<body>

<div class="wrap">
<%@ include file="head.jsp"%>
	<!-- 图片轮播区块 begin -->
	<div id="hot_area" class="slide_wrap">
		<div id="banner_slides" class="slides">
								
			
			<div class="slide_item">
				<a href="http://blog.sina.com.cn/s/blog_7659fcad0102wxrr.html?tj=1" target="_blank"><img src="picture/j66c-fyhfxph3500487.jpg" width="1000" height="500" alt="刺激！我在津巴布韦遛狮子" title="刺激！我在津巴布韦遛狮子"/></a>
				<a href="http://blog.sina.com.cn/s/blog_7659fcad0102wxrr.html?tj=1" target="_blank" class="item_title">刺激！我在津巴布韦遛狮子</a>
			</div>
			
			<div class="slide_item">
				<a href="http://blog.sina.com.cn/s/blog_59d8df1a0102wx6i.html?tj=1" target="_blank"><img src="picture/fmuk-fyhfxph1276250.jpg" width="1000" height="500" alt="世上最为壮丽的城市" title="世上最为壮丽的城市"/></a>
				<a href="http://blog.sina.com.cn/s/blog_59d8df1a0102wx6i.html?tj=1" target="_blank" class="item_title">世上最为壮丽的城市</a>
			</div>
			
			<div class="slide_item">
				<a href="http://blog.sina.com.cn/s/blog_53a7012f0102xisk.html?tj=1" target="_blank"><img src="picture/bmbb-fyfzsyc2938816.jpg" width="1000" height="500" alt="亲身体验过才知海钓多刺激" title="亲身体验过才知海钓多刺激"/></a>
				<a href="http://blog.sina.com.cn/s/blog_53a7012f0102xisk.html?tj=1" target="_blank" class="item_title">亲身体验过才知海钓多刺激</a>
			</div>
			
			<div class="slide_item">
				<a href="http://blog.sina.com.cn/s/blog_88523e890102wy5n.html?tj=1" target="_blank"><img src="picture/kmcu-fyfzfyz3433898.jpg" width="1000" height="500" alt="渔民大摆350桌海鲜宴" title="渔民大摆350桌海鲜宴"/></a>
				<a href="http://blog.sina.com.cn/s/blog_88523e890102wy5n.html?tj=1" target="_blank" class="item_title">渔民大摆350桌海鲜宴</a>
			</div>
			
			<div class="slide_item">
				<a href="http://blog.sina.com.cn/s/blog_49a346ea0102wvxu.html?tj=1" target="_blank"><img src="picture/9mbo-fyfzhap4580524.jpg" width="1000" height="500" alt="南美洲史诗般的秋色" title="南美洲史诗般的秋色"/></a>
				<a href="http://blog.sina.com.cn/s/blog_49a346ea0102wvxu.html?tj=1" target="_blank" class="item_title">南美洲史诗般的秋色</a>
			</div>
		
		</div>
		<a id="scroll_left" href="javascript:void(0);" class="slide_prev"></a>
		<a id="scroll_right" href="javascript:void(0);" class="slide_next"></a>
		<div id="slide_dots" class="slide_dots"></div>
		<script type="text/javascript">
		var sp = new ScrollPic();
		sp.scrollContId = 'banner_slides';
		sp.arrLeftId = 'scroll_left';
		sp.arrRightId = 'scroll_right';
		sp.arrsVisible = false;
		sp.dotListId = 'slide_dots';
		sp.dotOnClassName = 'selected';
		sp.listEvent = 'onmouseover';
		sp.pageWidth = 1000;
		sp.frameWidth = 1000;
		sp.circularly = true;
		sp.autoPlay = true;
		sp.hotId = 'hot_area'
		sp.initialize();
		</script>
	</div>
	<!-- 图片轮播区块 end -->
	
	
	 <%@ include file="foot.jsp"%>
</body>
</html>