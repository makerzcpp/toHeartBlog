<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Write</title>
<link rel="shortcut icon" href="favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<script type="text/javascript">
		var BASE = "${BASE}";
		</script>
		<link type="text/css" rel='stylesheet' href="${BASE}/css/showDialog/showDialog.css">
		<script src="${BASE}/js/jquery/jquery-1.11.1.min.js"></script>
		 <script src="${BASE}/utf8jsp/ueditor.config.js"></script>
		 <script src="${BASE}/js/article_index/write_index.js"></script>
    <script   src="${BASE}/utf8jsp/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script  src="${BASE}/utf8jsp/lang/zh-cn/zh-cn.js"></script>

    <style type="text/css">
        div{
            width:100%;
        }
    </style>
		
		
		<!-- 头部和底部的css -->
<link type="text/css" rel='stylesheet' href="${BASE}/css/bootstrap.min.css">
<link type="text/css" data-themecolor="default" rel='stylesheet' href="${BASE}/css/main-default2.css">
<link type="text/css" rel='stylesheet' href="${BASE}/css/pignose.parallaxslider.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

</head>
<body>
<input type="hidden"  id="blogId" value="${blogId}">
<%@ include file="head.jsp"%> 
 <div class="b-breadcrumbs f-breadcrumbs">
        <div class="container">
            <ul>
                <li><a href="#"><i class="fa fa-home"></i>编辑</a></li>
               <!--  <li><i class="fa fa-angle-right"></i><a href="#">Blog</a></li>
                <li><i class="fa fa-angle-right"></i><span>Listing Left Sidebar</span></li> -->
            </ul>
        </div>
    </div>
 <div >
 <div style="margin:30px 30px 30px 80px">
    <a>标题:</a><input id="headName" style="width:550px"></div>
    <div style="margin:30px 30px 30px 80px">
    <a>摘要:</a><input id="headLine" style="width:550px"></div>
    <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
</div>
    <c:forEach var="cg" items="${cglist}">
    <input type="radio" name="Category" value="${cg.categoryId}" >${cg.categoryName}
    </c:forEach> 
<div id="btns">
    <div>
        <!-- <button onclick="getAllHtml()">获得整个html的内容</button> -->
        <button onclick="getContent()">获得内容</button>
        <button id="tosubmmit" >提交内容</button>
        </div></div>        
       
  <%@ include file="foot.jsp"%> 
  <%@ include file="../script.jsp"%>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');

    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
 
    //提交内容
    function subbit(){
    	var headName = $("#headName").val();
    	var headLine = $("#headLine").val();
    	var text = UE.getEditor('editor').getContent();
    	var cateId = $("[name = Category]:checked").val();
    	 $.ajax({
			url : BASE+"/text/submit/"+$('#blogId').val(),
			data : {'headName':headName,'headLine':headLine,'text':text,'cateId':cateId},
			type : 'POST',
			dataType : 'json',
			success : function(result) {
				if(result.success){
					showInfo('提交成功，3秒钟之后返回文章页', function() { }, 3);
				}else{
					showInfo("服务器正忙，请稍后再试", function() { }, 3);
				}
			}
			}) ;
    }
		$("#tosubmmit").click(subbit);

</script>

</body>
</html>