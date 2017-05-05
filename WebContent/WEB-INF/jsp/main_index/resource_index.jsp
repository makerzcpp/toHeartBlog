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
		<link href="${BASE}/www/css/resource_index/common.css" type="text/css" rel="stylesheet">
		<link href="${BASE}/www/css/resource_index/resourse.css" type="text/css" rel="stylesheet">
		<script src="${BASE}/www/js/jquery-1.11.0.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="${BASE}/www/js/resource_index/all.js"></script>
		<script type="text/javascript" src="${BASE}/www/js/resource_index/pagenav.js"></script>
		<script type="text/javascript" src="${BASE}/www/js/resource_index/resourceList.js"></script>
		
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
                <li><a href="#"><i class="fa fa-home"></i>资源</a></li>            
            </ul>
        </div>
    </div>
	<div class="content2">
		<div class="schools border no-sha">
			<div class="w_976">
				<div class="w_976 classify">
					<h1>资源中心<b>本类共<i id="count_1"></i>个文件</b></h1>
					<div class="c_b">
						<div class="all" id="queryParam">
							<c:forEach items="${data.listArray}" var="listMap" varStatus="inx">
								<dl data-name="${listMap.queryName}">	
							        <dt>${listMap.propName}:</dt>
							        <dd>
								        <span class="current"><a href="javascript:void(0)" data-value="">全部</a></span>
								        <c:forEach items="${listMap.list}" var="prop">
									        <span data-value="${prop.dictName}"><a href="javascript:void(0)">${prop.dictName}</a></span>
								        </c:forEach>
							        </dd>				
						        </dl>
							</c:forEach>
							<div class="search"><input type="text" class="search_txt" id="searchkeywords">
				                <span id="on_sreach"><em></em><input type="button" class="search_btn"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="resource"></div>
			</div>
			
		</div>
	</div>
	
 <%@ include file="foot.jsp"%>


</body>
</html>