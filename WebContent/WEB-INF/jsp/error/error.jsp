<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>错误页面</title>
<link href="${BASE}/www/css/error/404.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="mianBox">
	<img src="${BASE}/www/images/error/yun0.png" alt="" class="yun yun0" />
	<img src="${BASE}/www/images/error/yun1.png" alt="" class="yun yun1" />
	<img src="${BASE}/www/images/error/yun2.png" alt="" class="yun yun2" />
	<img src="${BASE}/www/images/error/bird.png" alt="" class="bird" />
	<img src="${BASE}/www/images/error/san.png" alt="" class="san" />
	<div class="tipInfo">
		<div class="in">
			<div class="textThis">
				<h2>验证码错误</h2>
				<p><span>页面自动<a id="href" href="">跳转</a></span><span>等待<b id="wait">6</b>秒</span></p>
				<script type="text/javascript">                            (function() {
						var wait = document.getElementById('wait'), href = document.getElementById('href').href;
						var interval = setInterval(function() {
							var time = --wait.innerHTML;
							if (time <= 0) {
								location.href = href;
								clearInterval(interval);
							}
							;
						}, 1000);
					})();
				</script>
			</div>
		</div>
	</div>
</div>
<script src="${BASE}/www/js/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		var h = $(window).height();
		$('body').height(h);
		$('.mianBox').height(h);
		centerWindow(".tipInfo");
	});

	//2.将盒子方法放入这个方，方便法统一调用
	function centerWindow(a) {
		center(a);
		//自适应窗口
		$(window).bind('scroll resize',
				function() {
					center(a);
				});
	}

	//1.居中方法，传入需要剧中的标签
	function center(a) {
		var wWidth = $(window).width();
		var wHeight = $(window).height();
		var boxWidth = $(a).width();
		var boxHeight = $(a).height();
		var scrollTop = $(window).scrollTop();
		var scrollLeft = $(window).scrollLeft();
		var top = scrollTop + (wHeight - boxHeight) / 2;
		var left = scrollLeft + (wWidth - boxWidth) / 2;
		$(a).css({
			"top": top,
			"left": left
		});
	}
</script>
</body>
</html>