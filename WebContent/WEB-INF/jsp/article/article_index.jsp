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
<!-- blog-css -->
 <link href="http://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${BASE}/www/css/blog_css/style.css" type="text/css" />
<link rel="stylesheet" href="${BASE}/www/css/blog_css/prettyPhoto.css" type="text/css" />
<link rel="stylesheet" href="${BASE}/www/css/blog_css/calendar.css" type="text/css" />
<link rel="stylesheet" href="${BASE}/www/css/blog_css/mediaelementplayer.css" />
<link rel="stylesheet" href="${BASE}/www/css/blog_css/flexslider.css" type="text/css" />
<link rel="stylesheet" href="${BASE}/www/css/blog_css/jquery.ibutton.css" type="text/css" />
<!-- blog-css-end -->
<link href="${BASE}/www/css/page/page.css" type="text/css" rel="stylesheet"/>
<script src="${BASE}/www/js/jquery/jquery-1.11.1.min.js"></script>	
<script>var BASE = "${BASE}";</script>		
<link href='http://fonts.googleapis.com/css?family=Economica:700' rel='stylesheet' type='text/css'>		
		
		
<%@ include file="../main_index/style.jsp"%>

</head>
<body>
<input type="hidden" id="blogId" value="${blogId}"/>
<input type="hidden" id="artNum" value="${artNum}"/>

<%@ include file="../main_index/head.jsp"%>
 <div class="b-breadcrumbs f-breadcrumbs">
        <div class="container">
            <ul>
                <li><a href="#"><i class="fa fa-home"></i>文章</a></li>
                <li><a href="${BASE}/index/write/${blogId}/0"><i class="fa fa-home"></i>新建文章</a></li>
               <!--  <li><i class="fa fa-angle-right"></i><a href="#">Blog</a></li>
                <li><i class="fa fa-angle-right"></i><span>Listing Left Sidebar</span></li> -->
            </ul>
        </div>
    </div>

<div id="content" class="right_sidebar">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">   
                	<!-- 文章列表 -->                	
                        <div class="block_blog_1">  
                                                                   
                        </div>
                        
                        <div class="line_2" style="margin:24px 0px 25px;"></div>
                        <!-- 分页插件 -->
                        <div class="block_pager">
                        <ul class="page" maxshowpageitem="5" pagelistcount="5"  id="page"></ul>
                        </div>
                        
                    </div>
                    
                    <div class="sidebar">                     
                      <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_posts">
                        	<h4>热门文章</h4>
                             <c:forEach var="hotar" items="${hotarlist}">
                        	<div class="article">             
								<div class="text">
									<p class="title"><a href="#">${hotar.articleName}</a></p>
									<div class="date"><p>${hotar.creatTime}</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">${hotar.readNum}</a></li>
                                            <li><a href="#" class="comments">${hotar.commentNum}</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_3"></div>  
							 </c:forEach>                                                   
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                       <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_calendar">
                        <!--  -->                                                       
                            <div class="line_2"></div>
                        </div>
                        

                        
                    </div>
                    
                	<div class="clearboth"></div>
                </div>
            </div>
        </div>
                       
 <%@ include file="../main_index/foot.jsp"%>
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
		<!-- 分页JS -->
		<script type="text/javascript" src="${BASE}/www/js/page/page.js"></script>			
		<script type="text/javascript" src="${BASE}/www/js/article_index/article_index.js"></script>
</body>
</html>