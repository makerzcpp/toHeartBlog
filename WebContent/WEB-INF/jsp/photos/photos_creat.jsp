<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新建相册</title>
<link rel="shortcut icon" href="favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<script src="${BASE}/www/js/jquery/jquery-1.11.1.min.js"></script>
		<script>
		 var BASE='${BASE}';
		</script>
</head>
<body>
<form action=""  id="creat_photos" >
                <label class="input-tips" >相册名字：</label>                
                    <input type="text" id="name"  name="na"/>
                               
               <label class="input-tips" >描述：</label>                    
                    <input type="text" id="text"  name="te"/>   
                    
               <label class="input-tips" >分类：</label>    
                   <select style="width:180px; margin-left:-20px;" name="fen" >
                   <option selected>=请选择款项类型=</option>
                   <option value="0">图片</option>
                   <option value="1">视频</option>
                  </select>                          
                
              </form>
             <%@ include file="../script.jsp"%>
             <script>
            	function getParamsFn(){
            		return  $('#creat_photos').serialize();
            	}
             </script>
      </body>     
</html>