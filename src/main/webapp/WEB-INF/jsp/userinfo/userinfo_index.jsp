<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <meta charset="UTF-8">
    <title>个人中心</title>  
    <meta http-equiv="Cache-Control" content="no-cache,no-transform,no-siteapp" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link href="//static.tuchong.net/images/favicon.ico" rel="shortcut icon" type="image/x-icon" >
    <link rel="stylesheet" href="${BASE}/css/userinfo/userinfo_index1.css">
	<link rel="stylesheet" href="${BASE}/css/userinfo/userinfo_index2.css">
  <!-- 头部和脚步 -->
 <link rel='stylesheet' id='_bootstrap-css'  href='${BASE}/css/bootstrap.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='_main-css'  href='${BASE}/css/main_1.css' type='text/css' media='all' />
   <!--  end -->

<link rel="stylesheet" href="${BASE}/css/userinfo/userinfo_articlelist.css" type="text/css" /><!--    文博样式 -->
   <script>var BASE = "${BASE}";</script>	
    </head>
<body>
<input type="hidden" id="blogId" value="${blogId}"/>
<%@ include file="../main_index/head.jsp"%> 
<main>
    <div class="container1">
        
        <div class="personal-integer">
    <div class="personal-banner" 
                style="background-image: url(${BASE}/images/userinfo/site-bg-2.jpg)">
        <div class="posRelative personal-banner-info">
            <a href="javascript:;" class="personal-logo-link">
                <img src="${BASE}/images/userinfo/logo_large.jpg">
                                            </a>
            
            <div class="personal-info">
                <div>
                    <span class="info-name"> ___一念之间 </span>
                                    </div>

                <ul class="slash-list">
                    <li class="slash-item">湖南-长沙</li>
                    <li class="slash-item"> 
                        <a href="#"> 关注 0 </a> 
                    </li>
                    <li class="slash-item"> 
                        <a href="#"> 粉丝 0 </a> 
                    </li>
                </ul>

                            </div>

            <div class="personal-act">
                                    
                                                </div>
        </div>
    </div>

    <div class="personal-cover-info">
        <div class="user-cover J-user-cover">
            <img class="J-crop-img"/>
        </div>
        
        <div class="cover-action">
            <span>拖拽图片，以调整图片位置</span>
            <a href="javascript:;" class="btn btn-yellow J-confirm-edit">保存</a>
            <a href="javascript:;" class="btn btn-gray J-cancel-edit">取消</a>
        </div>
    </div>

    <script type="text/javascript">
        window.site = {"site_id":"2293615","type":"user","name":"___\u4e00\u5ff5\u4e4b\u95f4","domain":null,"url":"https:\/\/tuchong.com\/2293615\/","icon":"https:\/\/s1.tuchong.com\/sites\/229\/2293615\/logo_large.jpg?1","description":"","appearance":{"color":"#000","image":"https:\/\/static.tuchong.net\/images\/site-bg-2.jpg"},"followers":0,"members":0,"group_posts":0,"verified":false,"verified_type":0,"verified_reason":"","verifications":0,"verification_list":[],"is_following":false,"location":"\u6e56\u5357-\u957f\u6c99","following":"0","postNum":"0","weiboUrl":null,"conversation_url":"","timeline":[]};
    </script>

</div>
                

<nav class="secondary-nav">
    <ul class="nav-list">
                <li class="active" data-index="0">
            <a target="_self" class="articleBlog">文博</a>
        </li>
                <li class="" data-index="1">
            <a target="_self" href="#">图博</a>
        </li>
                <li class="" data-index="2">
            <a target="_self" href="#">相册</a>
        </li>
                <li class="" data-index="3">
            <a target="_self" href="#">资料</a>
        </li>
                <li class="" data-index="4">
            <a target="_self" href="#">收藏夹</a>
        </li>
            </ul>

                     
    </nav>        
        <div class="page-content">
        </div>
    </div>
</main>
 <%@ include file="../main_index/foot.jsp"%>
 
 
<script src="${BASE}/js/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${BASE}/js/userinfo/userinfo.js"></script>
</body>
</html>