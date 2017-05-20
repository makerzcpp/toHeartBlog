<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>登录/注册</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${BASE}/www/css/showDialog/showDialog.css" />
	<!-- Animate.css -->
	<link rel="stylesheet" href="${BASE}/www/css/login_css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${BASE}/www/css/login_css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="${BASE}/www/css/login_css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${BASE}/www/css/login_css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="${BASE}/www/css/login_css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="${BASE}/www/css/login_css/owl.carousel.min.css">
	<link rel="stylesheet" href="${BASE}/www/css/login_css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="${BASE}/www/css/login_css/style.css">

	<!-- Modernizr JS -->
	<script src="${BASE}/www/js/login/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<style type="text/css">
a:{
font-family : 微软雅黑;
font-size : 0.1em;
color : red;
}

</style>
<script type="text/javascript">
    var BASE="${BASE}";
</script>
</head>
<body>
	<input id="blogId" type="hidden" value="${blogId}"/>	
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="${BASE}/index/home">首页 <em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li><a href="#">推荐</a></li>
						<li><a href="#">微服务</a></li>
						<!-- <li class="has-dropdown">
							<a href="#">Dropdown</a>
							<ul class="dropdown">
								<li><a href="#">Web Design</a></li>
								<li><a href="#">eCommerce</a></li>
								<li><a href="#">Branding</a></li>
								<li><a href="#">API</a></li>
							</ul>
						</li>
						<li><a href="pricing.html">Pricing</a></li>
						<li><a href="contact.html">Contact</a></li> -->
						<li class="btn-cta"><a href="#"><span>返回页面</span></a></li>
					</ul>
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover" role="banner" style="background-image:url(${BASE}/www/images/login.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">心博 newBlog</span>
							<h1>用心记录每一个美好.</h1>	
						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
									<ul class="tab-menu">
										<li class="active gtco-first"><a href="#" data-tab="signup">注册</a></li>
										<li class="gtco-second"><a href="#" data-tab="login" id="button_login">登录</a></li>
									</ul>
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<form action="#">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="email">邮箱</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a id="inemail"></a>
														<input type="text" class="form-control" id="email">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">用户名</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a id="inusername"></a>
														<input type="text" class="form-control" id="username">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password">密码</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a id="inpassword"></a>
														<input type="password" class="form-control" id="password">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password2">确认密码</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a id="inpassword2"></a>
														<input type="password" class="form-control" id="password2">
													</div>
												</div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" id="register" value="注册">
													</div>
												</div>
											</form>	
										</div>

										<div class="tab-content-inner" data-content="login">
											<form action="#">
												<div class="row form-group">
													<div class="col-md-12">
														<label for="username">用户名</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a id="loinusername"></a>
														<input type="text" class="form-control" id="lousername">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="password">密码</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a id="loinpassword"></a>
														<input type="password" class="form-control" id="lopassword">
													</div>
												</div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" id="login" value="登录">
													</div>
												</div>
											</form>	
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	
	


	
	</div>
		</div>
	<!-- jQuery -->
	<%@ include file="../script.jsp"%>
	<script src="${BASE}/www/js/login/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="${BASE}/www/js/login/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="${BASE}/www/js/login/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="${BASE}/www/js/login/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="${BASE}/www/js/login/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="${BASE}/www/js/login/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="${BASE}/www/js/login/jquery.magnific-popup.min.js"></script>
	<script src="${BASE}/www/js/login/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="${BASE}/www/js/login/main.js"></script>
	<!-- 登录 -->
	<script src="${BASE}/www/js/login/login.js"></script>
	


</body>
</html>