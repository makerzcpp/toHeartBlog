<%-- <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<title>首页相册</title>
<link rel="stylesheet" href="${BASE}/css/bootstrap.min.css">
<link rel="stylesheet" href="${BASE}/css/pignose.parallaxslider.min.css" />
</head>
<body> --%>
<div id="wrapper">
 <div id="visual">
		 <div class="slide-visual">
			<!-- Slide Image Area (800 x 424)  -->
			<ul class="slide-group">
				<li><img src="${BASE}/images/photos/visual_slide01.jpg" alt="slide image" /></li>
				<li><img src="${BASE}/images/photos/visual_slide02.jpg" alt="slide image" /></li>
				<li><img src="${BASE}/images/photos/visual_slide03.jpg" alt="slide image" /></li>
				<li><img src="${BASE}/images/photos/visual_slide04.jpg" alt="slide image" /></li>
				<li><img src="${BASE}/images/photos/visual_slide05.jpg" alt="slide image" /></li>
				<li><img src="${BASE}/images/photos/visual_slide06.jpg" alt="slide image" /></li>
			</ul>

			<!-- Slide Description Image Area (316 x 328) -->
			<div class="script-wrap">
				<ul class="script-group">
					<li><div class="inner-script"><img src="${BASE}/images/photos/visual_slide_script01.jpg" alt="thumbnail slider image" /></div></li>
					<li><div class="inner-script"><img src="${BASE}/images/photos/visual_slide_script02.jpg" alt="thumbnail slider image" /></div></li>
					<li><div class="inner-script"><img src="${BASE}/images/photos/visual_slide_script03.jpg" alt="thumbnail slider image" /></div></li>
					<li><div class="inner-script"><img src="${BASE}/images/photos/visual_slide_script04.jpg" alt="thumbnail slider image" /></div></li>
					<li><div class="inner-script"><img src="${BASE}/images/photos/visual_slide_script05.jpg" alt="thumbnail slider image" /></div></li>
					<li><div class="inner-script"><img src="${BASE}/images/photos/visual_slide_script06.jpg" alt="thumbnail slider image" /></div></li>
				</ul>
				<div class="slide-controller">
					<a href="#" class="btn-prev"><img src="${BASE}/images/photos/btn_prev.png" alt="prev slide" /></a>
					<a href="#" class="btn-play"><img src="${BASE}/images/photos/btn_play.png" alt="start slide" /></a>
					<a href="#" class="btn-pause"><img src="${BASE}/images/photos/btn_pause.png" alt="pause slide" /></a>
					<a href="#" class="btn-next"><img src="${BASE}/images/photos/btn_next.png" alt="next slide" /></a>
				</div>
			</div>
	 </div>
	</div> 
 </div>
<%-- <script src="${BASE}/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${BASE}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${BASE}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${BASE}/js/pignose.parallaxslider.min.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('#visual').pignoseParallaxSlider({
			play    : '.btn-play',
			pause   : '.btn-pause',
			next    : '.btn-next',
			prev    : '.btn-prev'
		});
	});
</script> --%>


<!-- </body>
</html> -->