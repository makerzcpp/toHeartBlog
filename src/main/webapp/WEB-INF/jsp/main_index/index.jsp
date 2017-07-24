<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <c:set var="BASE" value="${pageContext.request.contextPath}"/>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bolg</title>
    <link rel="shortcut icon" href="favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- 头部和脚步 -->
    <link rel='stylesheet' id='_bootstrap-css' href='${BASE}/css/bootstrap.min.css' type='text/css' media='all'/>
    <link rel='stylesheet' id='_main-css' href='${BASE}/css/main_1.css' type='text/css' media='all'/>

    <!-- Bootstrap css -->
    <link type="text/css" rel='stylesheet' href="${BASE}/css/pignose.parallaxslider.min.css">
    <!-- End Bootstrap css -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&amp;subset=latin,cyrillic-ext'
          rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <link type="text/css" data-themecolor="default" rel='stylesheet' href="${BASE}/css/main-default.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
<%@ include file="head.jsp" %>
<div class="j-menu-container"></div>
<div class="b-inner-page-header f-inner-page-header b-bg-header-inner-page">
    <div class="b-inner-page-header__content">
        <div class="container">
            <img src="${BASE}/images/guanggao.jpg">
        </div>
    </div>
</div>
<div class="l-main-container">

    <div class="b-breadcrumbs f-breadcrumbs">
        <div class="container">
            <ul>
                <li><a href="#"><i class="fa fa-home"></i>主页</a></li>
                <!--  <li><i class="fa fa-angle-right"></i><a href="#">Blog</a></li>
                 <li><i class="fa fa-angle-right"></i><span>Listing Left Sidebar</span></li> -->
            </ul>
        </div>
    </div>
    <!--上面是头部  -->
    <div class="l-inner-page-container">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-md-push-3">
                    <div class="b-blog-listing__block">
                        <div class="b-blog-listing__block-top">
                            <!-- 首页轮播图 -->
                            <div class=" view view-sixth">

                                <%@ include file="manyPhotos.jsp" %>

                            </div>
                        </div>
                    </div>
                    <div class="b-blog-listing__block">
                        <!--  首页热门文章展示 -->
                        <div class="b-infoblock-with-icon b-blog-listing__infoblock">
                            <c:forEach var="hotar" items="${hotarlist}">
                                <a href="#"
                                   class="b-infoblock-with-icon__icon f-infoblock-with-icon__icon fade-in-animate hidden-xs">
                                    <i class="fa fa-video-camera"></i>
                                </a>
                                <div class="b-infoblock-with-icon__info f-infoblock-with-icon__info">
                                    <a href="#"
                                       class="f-infoblock-with-icon__info_title b-infoblock-with-icon__info_title f-primary-l b-title-b-hr f-title-b-hr">
                                            ${hotar.articleName}
                                    </a>
                                    <div class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text f-primary-b b-blog-listing__pretitle">
                                        By ${hotar.creatTime}
                                        <a href="#" class="f-more b-blog-listing__additional-text f-primary"><i
                                                class="fa fa-comment"></i>${hotar.commentNum}Comments</a>
                                    </div>
                                    <div class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text c-primary b-blog-listing__text">
                                            ${fn:substring(hotar.articleText,0,55)}
                                    </div>
                                </div>
                                <br><br>
                            </c:forEach>


                            <div class="f-infoblock-with-icon__info_text b-infoblock-with-icon__info_text">
                                <a href="#" class="f-more f-primary-b">Read more</a>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="visible-xs-block visible-sm-block b-hr"></div>
                <div class="col-md-3 col-md-pull-9">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="b-form-row b-input-search">
                                <input class="form-control" type="text" placeholder="搜索"/>
                                <span class="b-btn b-btn-search f-btn-search fa fa-search fa-2x"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row b-col-default-indent">
                        <div class="col-md-12">
                            <div class="b-categories-filter">
                                <h4 class="f-primary-b b-h4-special f-h4-special--gray f-h4-special">博文类别</h4>
                                <ul>
                                    <c:forEach var="cg" items="${cglist}" varStatus="name" begin="0" end="8">
                                        <li>
                                            <a class="f-categories-filter_name" href="#"><i
                                                    class="fa fa-plus"></i>${cg.categoryName}</a>
                                            <span class="b-categories-filter_count f-categories-filter_count">${cg.articleNum}</span>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h4 class="f-primary-b b-h4-special  f-h4-special--gray f-h4-special">精彩专辑</h4>

                            <div class="b-blog-short-post b-blog-short-post--img-hover-bordered b-blog-short-post--w-img f-blog-short-post--w-img row">
                                <div class="b-blog-short-post b-blog-short-post--img-hover-bordered b-blog-short-post--w-img f-blog-short-post--w-img row">
                                    <c:forEach var="box" items="${pboxlist}">
                                        <div class="b-blog-short-post--popular col-md-12  col-xs-12 f-primary-b">
                                            <div class="b-blog-short-post__item_img">
                                                <a href="#"><img data-retina src="${BASE}${box.imgHead}" alt=""/></a>
                                            </div>
                                            <div class="b-remaining">
                                                <div class="b-blog-short-post__item_text f-blog-short-post__item_text">
                                                    <a href="#">${box.boxName}:${box.boxText}</a>
                                                </div>
                                                <div class="b-blog-short-post__item_date f-blog-short-post__item_date f-primary-it">
                                                        ${box.creatTime}
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h4 class="f-primary-b b-h4-special f-h4-special--gray f-h4-special">热门标签</h4>
                            <div>
                                <a class="f-tag b-tag" href="#">Dress</a>
                                <a class="f-tag b-tag" href="#">Mini</a>
                                <a class="f-tag b-tag" href="#">Skate animal</a>
                                <a class="f-tag b-tag" href="#">Lorem ipsum</a>
                                <a class="f-tag b-tag" href="#">literature</a>
                                <a class="f-tag b-tag" href="#">Baroque</a>
                                <a class="f-tag b-tag" href="#">Dress</a>
                                <a class="f-tag b-tag" href="#">Mini</a>
                                <a class="f-tag b-tag" href="#">Skate animal</a>
                                <a class="f-tag b-tag" href="#">Lorem ipsum</a>
                                <a class="f-tag b-tag" href="#">literature</a>
                                <a class="f-tag b-tag" href="#">Baroque</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
<%@ include file="foot.jsp" %>

<script src="${BASE}/js/jquery/jquery-1.11.1.min.js"></script>
<!-- bootstrap -->
<script src="${BASE}/js/bootstrap.min.js"></script>
<!-- end bootstrap -->


<script src="${BASE}/js/modules/color-themes.js"></script>
<script src="${BASE}/js/cookie.js"></script>
<script src="${BASE}/js/login/login.js"></script>
<script src="${BASE}/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${BASE}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${BASE}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${BASE}/js/pignose.parallaxslider.min.js"></script>
<script type="text/javascript">
    $(window).load(function () {
        $('#visual').pignoseParallaxSlider({
            play: '.btn-play',
            pause: '.btn-pause',
            next: '.btn-next',
            prev: '.btn-prev'
        });
    });
</script>

</body>
</html>