<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>相册列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<script type="text/javascript">
    var BASE="${BASE}";
</script>
<script src="${BASE}/www/js/jquery.js?v=1.83.min"></script>
<script src="${BASE}/www/js/photosindex/layer.min.js"></script>
<style>
html{background-color:#E3E3E3; font-size:14px; color:#000; font-family:'微软雅黑'}
a,a:hover{ text-decoration:none;}
pre{font-family:'微软雅黑'}
.box{padding:20px; background-color:#fff; margin:20px 230px; border-radius:5px;}
.box a{padding-right:15px;}
#about_hide{display:none}
.layer_text{background-color:#fff; padding:20px;}
.layer_text p{margin-bottom: 10px; text-indent: 2em; line-height: 23px;}
.button{display:inline-block; *display:inline; *zoom:1; line-height:30px; padding:0 20px; background-color:#56B4DC; color:#fff; font-size:14px; border-radius:3px; cursor:pointer; font-weight:normal;}
.imgs img{width:300px;height: 200px;padding:0 20px 20px;}
</style>

		<!-- 头部和底部的css -->
<link type="text/css" rel='stylesheet' href="${BASE}/www/css/bootstrap.min.css">
<link type="text/css" data-themecolor="default" rel='stylesheet' href="${BASE}/www/css/main-default.css"> 
<link type="text/css" rel='stylesheet' href="${BASE}/www/css/pignose.parallaxslider.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="${BASE}/www/css/showDialog/showDialog.css" />
</head>
<body>
<input type="hidden" id="boxId" value="${boxId}"/>
<%@ include file="../main_index/head.jsp"%>
<div class="b-breadcrumbs f-breadcrumbs">
        <div class="container">
            <ul>
                <li><a href="#"><i class="fa fa-home"></i>相册列表</a></li>
                <li><a id="add"><i class="fa fa-home"></i>新增照片</a></li>
               <!--  <li><i class="fa fa-angle-right"></i><a href="#">Blog</a></li>
                <li><i class="fa fa-angle-right"></i><span>Listing Left Sidebar</span></li> -->
            </ul>
        </div>
    </div>
<div class="box">
    <h2 style="padding-bottom:20px;">相册列表</h2>
    <div id="imgs" class="imgs">
    <c:forEach var="ph" items="${photoList}">
        <img src="${BASE}/${ph.photoUrl}" >
        <a id="dele" data-id="${ph.photoId}">删除</a>
        </c:forEach>
    </div>
	<div style="text-align:center;clear:both;">
</div>
</div>
 <%@ include file="../main_index/foot.jsp"%>
  <%@ include file="../script.jsp"%>
<script>
	;!function(){
		layer.use('layer.ext.js', function(){
		    //初始加载即调用，所以需放在ext回调里
		    layer.ext = function(){
		        layer.photosPage({
		            html:'<div style="padding:20px;">这里传入自定义的html<p>相册支持左右方向键，支持Esc关闭</p><p>另外还可以通过异步返回json实现相册。更多用法详见官网。</p><p>'+ unescape("%u7D20%u6750%u5BB6%u56ED%20-%20sc.chinaz.com") +'</p><p id="change"></p></div>',
		            title: '快捷模式-获取页面元素包含的所有图片',
		            id: 100, //相册id，可选
		            parent:'#imgs'
		        });
		    };
		});
		}();
		
		//添加照片
		var add = function(){
			var diag = new zDialog();
        	diag.Width = 760;
        	diag.Height = 610;       	
        	diag.URL = BASE+'/photo/add/'+$("#boxId").val();
        	diag.OKEvent = function(){ 
    			var upload = diag.innerFrame.contentWindow.upPhoto();
        		upload;
        	}; 
        	diag.show();
        	diag.okButton.value=" 上传   ";
        	diag.cancelButton.value=" 完成 ";       	
		};
		$("#add").click(add);
		
</script>
<script type="text/javascript">
//删除照片
var del = function(){
	var photoIds = $(this).attr("data-id");
	$.ajax({
		url : BASE+"/photo/delete",
		data : {'photoIds':photoIds},
		type : 'POST',
		dataType : 'json',
		success : function(data) {
			if(data.success){
				showInfo("删除成功", function() { }, 3);
			}else{
				showInfo("服务器正忙，请稍后再试", function() { }, 3);
			}
		}
		})
}
$("#dele").click(del);
</script>

      </body>     
</html>