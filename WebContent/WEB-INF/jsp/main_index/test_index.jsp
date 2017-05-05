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
<!-- MediaElements start -->
<link rel="stylesheet" href="${BASE}/www/css/blog_css/mediaelementplayer.css" />
<link rel="stylesheet" href="${BASE}/www/css/blog_css/flexslider.css" type="text/css" />
<link rel="stylesheet" href="${BASE}/www/css/blog_css/jquery.ibutton.css" type="text/css" />

<!-- blog-css-end -->
		<script src="${BASE}/www/js/jquery/jquery-1.11.1.min.js"></script>			
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

<div id="content" class="right_sidebar">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">                   	
                        <div class="separator" style="height:30px;"></div>
                        
                        <h2>Our Blog Style 1</h2>
                        
                        <p class="general_subtitle">Eestablished fact that a reader will be distracted by the readable content of a page when looking at its layout are many variations of passages have suffered alteration.</p>
                        
                        <div class="line_4" style="margin:0px 0px 0px;"></div>
                        
                        <div class="block_blog_1">
                        	<article class="blog_post">
                            	<div class="tail"></div>
                            	<!-- <div class="f_pic"><a href="blog_post.html"><img src="images/pic_blog_1_1.jpg" alt="" /></a></div> -->
                            	
                                <h4 class="title"><a href="blog_post.html">Publishing packages and web page editors now use.</a></h4>
                                
                                <div class="info">
                                	<div class="date"><p>15 July, 2012</p></div>
                                    <div class="author"><p>By: <a href="#">John Doe</a></p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category">
                                        	<p class="text">Category:</p>
                                            <ul>
                                            	<li><a href="#">BUSINESS</a></li>
                                            </ul>
                                        </div>
                                        
                                        <a href="#" class="views">650</a>
                                        <a href="#" class="comments">25</a>
                                    </div>
                                </div>
                                
                                <div class="content">
                                	<p>Pellentesque felis at turpis bibendum, duis eu consectetur sed tellus, blandit pulvinar dictum ac wisi libero a, nec sed ac elit. Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec, iaculis aenean, parturient velit elit ac viverra vestibulum, quis et nascetur rutrum nibh molestie fusce.</p>
                                </div>
                                
                            </article>
                            
                            <article class="blog_post">
                            	<div class="tail"></div>
                            	<!-- <div class="f_pic"><a href="blog_post.html" class="general_pic_hover zoom"><img src="images/pic_blog_1_2.jpg" alt="" /></a></div> -->
                            	
                                <h4 class="title"><a href="blog_post.html">Publishing packages and web page editors now use.</a></h4>
                                
                                <div class="info">
                                	<div class="date"><p><a href="#">15 July, 2012</a></p></div>
                                    <div class="author"><p>By: <a href="#">John Doe</a></p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category">
                                        	<p class="text">Category:</p>
                                            <ul>
                                            	<li><a href="#">People</a></li>
                                            </ul>
                                        </div>
                                        
                                        <a href="#" class="views">650</a>
                                        <a href="#" class="comments">25</a>
                                    </div>
                                </div>
                                
                                <div class="content">
                                	<p>Pellentesque felis at turpis bibendum, duis eu consectetur sed tellus, blandit pulvinar dictum ac wisi libero a, nec sed ac elit. Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec, iaculis aenean, parturient velit elit ac viverra vestibulum, quis et nascetur rutrum nibh molestie fusce.</p>
                                </div>
                                
                            </article>
                            
                            <article class="blog_post">
                            	<div class="tail"></div>
                            	<!-- <div class="f_pic"><a href="blog_post.html"><img src="images/pic_blog_1_3.jpg" alt="" /></a></div> -->
                            	
                                <h4 class="title"><a href="blog_post.html">Publishing packages and web page editors now use.</a></h4>
                                
                                <div class="info">
                                	<div class="date"><p>15 July, 2012</p></div>
                                    <div class="author"><p>By: <a href="#">John Doe</a></p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category">
                                        	<p class="text">Category:</p>
                                            <ul>
                                            	<li><a href="#">BUSINESS</a></li>
                                            </ul>
                                        </div>
                                        
                                        <a href="#" class="views">650</a>
                                        <a href="#" class="comments">25</a>
                                    </div>
                                </div>
                                
                                <div class="content">
                                	<p>Pellentesque felis at turpis bibendum, duis eu consectetur sed tellus, blandit pulvinar dictum ac wisi libero a, nec sed ac elit. Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec, iaculis aenean, parturient velit elit ac viverra vestibulum, quis et nascetur rutrum nibh molestie fusce.</p>
                                </div>
                                
                            </article>
                            
                            <article class="blog_post">
                            	<div class="tail"></div>
                            	<!-- <div class="f_pic"><a href="blog_post.html"><img src="images/pic_blog_1_4.jpg" alt="" /></a></div> -->
                            	
                                <h4 class="title"><a href="blog_post.html">Publishing packages and web page editors now use.</a></h4>
                                
                                <div class="info">
                                	<div class="date"><p>15 July, 2012</p></div>
                                    <div class="author"><p>By: <a href="#">John Doe</a></p></div>
                                    
                                    <div class="r_part">
                                    	<div class="category">
                                        	<p class="text">Category:</p>
                                            <ul>
                                            	<li><a href="#">BUSINESS</a></li>
                                            </ul>
                                        </div>
                                        
                                        <a href="#" class="views">650</a>
                                        <a href="#" class="comments">25</a>
                                    </div>
                                </div>
                                
                                <div class="content">
                                	<p>Pellentesque felis at turpis bibendum, duis eu consectetur sed tellus, blandit pulvinar dictum ac wisi libero a, nec sed ac elit. Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec, iaculis aenean, parturient velit elit ac viverra vestibulum, quis et nascetur rutrum nibh molestie fusce.</p>
                                </div>
                                
                            </article>
                        </div>
                        
                        <div class="line_2" style="margin:24px 0px 25px;"></div>
                        
                        <div class="block_pager">
                        	<a href="#" class="prev">Previous</a>
                            <a href="#" class="next">Next</a>
                            
                            <div class="pages">
                            	<ul>
                                	<li><a href="#">1</a></li>
                                    <li class="current"><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">6</a></li>
                                </ul>
                            </div>
                            
                            <div class="clearboth"></div>
                        </div>
                        
                    </div>
                    
                    <div class="sidebar">                     
                      <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_popular_posts">
                        	<h4>Popular Posts</h4>
                            
                        	<div class="article">             
								<div class="text">
									<p class="title"><a href="#">Packages and web page editors their default text.</a></p>
									<div class="date"><p>11 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">41</a></li>
                                            <li><a href="#" class="comments">22</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_3"></div>
                            
                            <div class="article">                          
								<div class="text">
									<p class="title"><a href="#">Web page editors their default model text, and a search for.</a></p>
									<div class="date"><p>07 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">24</a></li>
                                            <li><a href="#" class="comments">16</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_3"></div>
                            
                            <div class="article">
						<div class="text">
									<p class="title"><a href="#">Editors their default model text, and a search uncover.</a></p>
									<div class="date"><p>05 July, 2012</p></div>
                                    <div class="icons">
                                    	<ul>
                                        	<li><a href="#" class="views">33</a></li>
                                            <li><a href="#" class="comments">25</a></li>
                                        </ul>
                                    </div>
								</div>
							</div>
							<div class="line_2"></div>
                        </div>
                        
                        <div class="separator" style="height:31px;"></div>
                       <div class="separator" style="height:31px;"></div>
                        
                        <div class="block_calendar">
                            
                            <script type="text/javascript">
								var today = new Date();
								var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
								$('#calendar_sidebar').DatePicker({
									flat : true,
									date : date,
									calendars : 1,
									starts : 1,
									locale : {
										days : ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
										daysShort : ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
										daysMin : ['S', 'M', 'T', 'W', 'T', 'F', 'S', 'S'],
										months : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
										monthsShort : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
										weekMin : 'wk'
									}
								});
							</script>
                            
                            <div class="line_2"></div>
                        </div>
                        

                        
                    </div>
                    
                	<div class="clearboth"></div>
                </div>
            </div>
        </div>
                       
 <%@ include file="foot.jsp"%>


</body>
</html>