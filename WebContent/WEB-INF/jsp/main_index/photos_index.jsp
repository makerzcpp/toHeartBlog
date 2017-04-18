<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bolg</title>
<link rel="shortcut icon" href="favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<script src="${BASE}/www/js/jquery/jquery-1.11.1.min.js"></script>
		<link rel="icon" href="${BASE}/www/images/photosindex/favicon.ico">
		<link rel="shortcut icon" href="${BASE}/www/images/photosindex/favicon.ico" />
		<link rel="stylesheet" href="${BASE}/www/css/photosindex/style.css">
		<link href='http://fonts.googleapis.com/css?family=Economica:700' rel='stylesheet' type='text/css'>		
		<script src="${BASE}/www/js/photosindex/jquery-migrate-1.1.1.js"></script>
		<script src="${BASE}/www/js/photosindex/script.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.ui.totop.js"></script>
		<script src="${BASE}/www/js/photosindex/superfish.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.equalheights.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.mobilemenu.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.easing.1.3.js"></script>
		<script>
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
		})
		</script>
		
		<!-- 头部和底部的css -->
<link type="text/css" rel='stylesheet' href="${BASE}/www/css/bootstrap.min.css">
<link type="text/css" data-themecolor="default" rel='stylesheet' href="${BASE}/www/css/main-default.css"> 
<link type="text/css" rel='stylesheet' href="${BASE}/www/css/pignose.parallaxslider.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

</head>
<body>
<%@ include file="head.jsp"%>
 <div class="b-breadcrumbs f-breadcrumbs">
        <div class="container">
            <ul>
                <li><a href="#"><i class="fa fa-home"></i>相册</a></li>
               <!--  <li><i class="fa fa-angle-right"></i><a href="#">Blog</a></li>
                <li><i class="fa fa-angle-right"></i><span>Listing Left Sidebar</span></li> -->
            </ul>
        </div>
    </div>
<%--  <%@ include file="head.jsp"%>  --%>
<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - December 30, 2013!</div>
				<div class="container_12">
					<div class="grid_6">
						<div class="p1_box left cl1">
							<div class="type"></div>
							<img src="${BASE}/www/images/photosindex/page1_img1.jpg" alt="">
							<a href="${BASE}/index/photoslist" class="bot">Boudoir Beauty <span>7 <br>images</span></a>
						</div>
						<div class="p1_box left cl2">
							<div class="type"></div>
							<div class="gray_block">
								Go ahead and read more about this <span class="col1"><a href="http://sc.chinaz.com/?free-website-templates/" rel="nofollow">free theme</a></span> created by TemplateMonster.com.<br>
								Wide variety of premium <span class="col1"><a href="http://sc.chinaz.com/?category/art-photography-website-templates/" rel="nofollow">Art &amp; Photography templates</a></span> is to be found in the same name category at our site.
							</div>
							<a href="#" class="bot">Master Class<span>5 <br>comments</span></a>
						</div>
						<div class="p1_box left cl1 pos1">
							<div class="type"></div>
							<img src="${BASE}/www/images/photosindex/page1_img4.jpg" alt="">
							<a href="${BASE}/index/photoslist" class="bot">Summer Lifestyle<span>10<br>images</span></a>
						</div>
						<div class="p1_box left cl3 pos1">
							<div class="type"></div>
							<img src="${BASE}/www/images/photosindex/page1_img6.jpg" alt="">
							<a href="index-3.html" class="bot">Coexisting with Nature<span><strong class="fa-angle-right fa"></strong></span></a>
						</div>
					</div>
					<div class="grid_6">
						<div class="p1_box right cl1">
							<div class="type"></div>
							<img src="${BASE}/www/images/photosindex/page1_img2.jpg" alt="">
							<a href="${BASE}/index/photoslist" class="bot">Pics of Nature <span>8 <br>images</span></a>
						</div>
						<div class="p1_box right cl3">
							<div class="type"></div>
							<img src="${BASE}/www/images/photosindex/page1_img3.jpg" alt="">
							<a href="index-3.html" class="bot">Night Sky Video<span><strong class=" fa-angle-right fa"></strong></span></a>
						</div>
						<div class="p1_box right cl4">
							<div class="type"></div>
							<a href="#" class="bot">Inspirational Resources</a>
						</div>
						<div class="p1_box right cl5">
							<div class="type"></div>
							<blockquote>To me, photography is an art of observation. It’s about finding something interesting in an ordinary place... I’ve found it has little to do with the things you see and everything to do with the way you see them. </blockquote>
							<a href="#" class="bot">Elliott Erwitt <span>8 <br>comments</span></a>
						</div>
						<div class="p1_box right cl2">
							<div class="type"></div>
							<img src="${BASE}/www/images/photosindex/page1_img7.jpg" alt="">
							<a href="#" class="bot">My new project<span><strong class=" fa-angle-right fa"></strong></span></a>
						</div>
					</div>
					<div class="clear"></div>
					<div class="grid_12">
						<a href="#" class="round"> Older Posts</a>
					</div>
				</div>
			</div>
 <%@ include file="foot.jsp"%>


</body>
</html>