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
		<link type="text/css" rel='stylesheet' href="${BASE}/www/css/showDialog/showDialog.css">
		
		
		<!-- 头部和底部的css -->
<link type="text/css" rel='stylesheet' href="${BASE}/www/css/bootstrap.min.css">
<link type="text/css" data-themecolor="default" rel='stylesheet' href="${BASE}/www/css/main-default.css"> 
<link type="text/css" rel='stylesheet' href="${BASE}/www/css/pignose.parallaxslider.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

</head>
<body>
<input type="hidden" id="blogId" value="${blogId}"/>
<%@ include file="head.jsp"%>
 <div class="b-breadcrumbs f-breadcrumbs">
        <div class="container">
            <ul>
                <li><a href="#"><i class="fa fa-home"></i>相册</a></li>
                <c:if test="${buttonshow==true}">
                <li><a id="creat"><i class="fa fa-home"></i>新建相册</a></li>
                </c:if>
               <!--  <li><i class="fa fa-angle-right"></i><a href="#">Blog</a></li>
                <li><i class="fa fa-angle-right"></i><span>Listing Left Sidebar</span></li> -->
            </ul>
        </div>
    </div>
<%--  <%@ include file="head.jsp"%>  --%>
<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - December 30, 2013!</div>

				<div class="container_12">	
				<c:forEach var="box" items="${list}" varStatus="ls">	
					<div class="grid_6">
					<c:if test="${ls.index%2==0}">				
						<c:if test="${box.boxType==0}">
						<div class="p1_box left cl1">
							<div class="type"></div>
							<img src="${BASE}${box.imgHead}" alt="">
							<a href="${BASE}/photo/photoslist/${blogId}/${box.boxId}" class="bot">${box.boxName} <span>${box.imgNum} <br>images</span></a>
						</div>
						</c:if>
						<c:if test="${box.boxType==1}">
						<div class="p1_box left cl3 pos1">
							<div class="type"></div>
							<img src="${BASE}${box.imgHead}" alt="">
							<a href="${BASE}/photo/photoslist/${blogId}/${box.boxId}" class="bot">${box.boxName}<span><strong class=" fa-angle-left fa"></strong></span></a>
						</div>
						</c:if>
					</c:if>	
					</div>
					<div class="grid_6">
					<c:if test="${ls.index%2!=0}">	
					<c:if test="${box.boxType==0}">
						<div class="p1_box right cl1 pos1">
							<div class="type"></div>
							<img src="${BASE}${box.imgHead}" alt="">
							<a href="${BASE}/photo/photoslist/${blogId}/${box.boxId}" class="bot">${box.boxName}<span>${box.imgNum}<br>images</span></a>
						</div>
						</c:if>
						<c:if test="${box.boxType==1}">
						<div class="p1_box right cl3">
							<div class="type"></div>
							<img src="${BASE}${box.imgHead}" alt="">
							<a href="${BASE}/photo/photoslist/${blogId}/${box.boxId}" class="bot">${box.boxName}<span><strong class=" fa-angle-right fa"></strong></span></a>
						</div>
						</c:if>
						</c:if>
					</div>
					</c:forEach>
					<div class="clear"></div>
					<div class="grid_12">
						<a href="#" class="round"> Older Posts</a>
					</div>
						
				</div>				
			</div>
 <%@ include file="foot.jsp"%>
 		<script src="${BASE}/www/js/photosindex/jquery-migrate-1.1.1.js"></script>
		<script src="${BASE}/www/js/photosindex/script.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.ui.totop.js"></script>
		<script src="${BASE}/www/js/photosindex/superfish.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.equalheights.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.mobilemenu.js"></script>
		<script src="${BASE}/www/js/photosindex/jquery.easing.1.3.js"></script>
		<script>
		BASE = '${BASE}';
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
		})
		</script>
 <%@ include file="../script.jsp"%>
<script>
		var creat = function(){
			var diag = new zDialog();
        	diag.Width = 760;
        	diag.Height = 610;       	
        	diag.URL = BASE+'/photo/creat/'+$("#blogId").val();
        	diag.OKEvent = function(){
        		// 1.提交保存    		
			var data = diag.innerFrame.contentWindow.getParamsFn();
				$.ajax({
					url : BASE+"/photo/creat/"+$("#blogId").val(),
					data : data,
					type : 'POST',
					dataType : 'json',
					success : function(data) {
						if(data.success){
							showInfo("创建成功", function() { }, 3);
						}else{
							showInfo("服务器正忙，请稍后再试", function() { }, 3);
						}
					}
					})
					location.reload();
				diag.close();
        	}; 
        	diag.show();
        	diag.okButton.value=" 保存 ";
        	diag.cancelButton.value=" 取消 ";
		};
		$("#creat").click(creat);
		</script>

</body>
</html>