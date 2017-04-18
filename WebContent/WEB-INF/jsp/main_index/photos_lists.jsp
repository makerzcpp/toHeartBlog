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
		<link rel="stylesheet" href="${BASE}/www/css/photosindex/touchTouch.css">
		<link href='http://fonts.googleapis.com/css?family=Economica:700' rel='stylesheet' type='text/css'>		
		<script src="${BASE}/www/js/photosindex/jquery-migrate-1.1.1.js"></script>
		<script src="${BASE}/www/js/photosindex/script.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.ui.totop.js"></script>
		<script src="${BASE}/www/js/photosindex/superfish.js"></script>
		<script src="${BASE}/www/js/photosindex/touchTouch.jquery.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.equalheights.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.mobilemenu.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.easing.1.3.js"></script>
		<script>
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
			$('.gallery a.gal').touchTouch();
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
<!--==============================Content=================================-->
			<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - December 30, 2013!</div>
				<div class="container_12">
					<div class="grid_12">
						<div class="box bx1">
							<div class="inner">
								<h3>Gallery</h3>
								<div class="gallery">
									<a href="${BASE}/www/images/photosindex/big7.jpg" class="gal"><img src="${BASE}/www/images/photosindex/page3_img1.jpg" alt=""></a>
									<a href="${BASE}/www/images/photosindex/big8.jpg" class="gal"><img src="${BASE}/www/images/photosindex/page3_img2.jpg" alt=""></a>
									<a href="${BASE}/www/images/photosindex/big9.jpg" class="gal"><img src="${BASE}/www/images/photosindex/page3_img3.jpg" alt=""></a>
									<a href="${BASE}/www/images/photosindex/big10.jpg" class="gal"><img src="${BASE}/www/images/photosindex/page3_img4.jpg" alt=""></a>
									<a href="${BASE}/www/images/photosindex/big11.jpg" class="gal"><img src="${BASE}/www/images/photosindex/page3_img5.jpg" alt=""></a>
									<a href="${BASE}/www/images/photosindex/big12.jpg" class="gal"><img src="${BASE}/www/images/photosindex/page3_img6.jpg" alt=""></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
<!--==============================footer=================================-->
 <%@ include file="foot.jsp"%>


</body>
</html>