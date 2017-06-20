<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图博</title>
<!-- 头部和脚步 -->
<link rel='stylesheet' id='_bootstrap-css'  href='${BASE}/www/css/bootstrap.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='_main-css'  href='${BASE}/www/css/main_1.css' type='text/css' media='all' />
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
				<a href="#" target="_blank"><img src="${BASE}/www/images/photoblog/1.png" width="1000" height="500" alt="刺激！我在津巴布韦遛狮子" title="刺激！我在津巴布韦遛狮子"/></a>
				<a href="#" target="_blank" class="item_title">刺激！我在津巴布韦遛狮子</a>
			</div>
			
			<div class="slide_item">
				<a href="#" target="_blank"><img src="${BASE}/www/images/photoblog/2.png" width="1000" height="500" alt="世上最为壮丽的城市" title="世上最为壮丽的城市"/></a>
				<a href="#" target="_blank" class="item_title">世上最为壮丽的城市</a>
			</div>
			
			<div class="slide_item">
				<a href="#" target="_blank"><img src="${BASE}/www/images/photoblog/3.png" width="1000" height="500" alt="亲身体验过才知海钓多刺激" title="亲身体验过才知海钓多刺激"/></a>
				<a href="#" target="_blank" class="item_title">亲身体验过才知海钓多刺激</a>
			</div>
			
			<div class="slide_item">
				<a href="#" target="_blank"><img src="${BASE}/www/images/photoblog/4.png" width="1000" height="500" alt="渔民大摆350桌海鲜宴" title="渔民大摆350桌海鲜宴"/></a>
				<a href="#" target="_blank" class="item_title">渔民大摆350桌海鲜宴</a>
			</div>
			
			<div class="slide_item">
				<a href="#" target="_blank"><img src="${BASE}/www/images/photoblog/5.png" width="1000" height="500" alt="南美洲史诗般的秋色" title="南美洲史诗般的秋色"/></a>
				<a href="#" target="_blank" class="item_title">南美洲史诗般的秋色</a>
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