<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<c:set var="BASE" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <meta charset="UTF-8">
    <title>个人资料</title>  
    <meta http-equiv="Cache-Control" content="no-cache,no-transform,no-siteapp">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="apple-itunes-app" content="app-id=1073064739">
    <link href="//static.tuchong.net/images/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <link rel="stylesheet" href="${BASE}/css/userinfo/userinfo_edit.css">
  <!-- 头部和脚步 -->
<link rel='stylesheet' id='_bootstrap-css'  href='${BASE}/css/bootstrap.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='_main-css'  href='${BASE}/css/main_1.css' type='text/css' media='all' />

   <!--  end -->
    </head>
<body>
<%@ include file="../main_index/head.jsp"%>
<main>
    <div class="container" style="padding-top: 60px;">               
       <div class="content">

            <div id="avatar" class="avatar-wrap">
                <div class="avatar" style="background-image:url('https://s1.tuchong.com/sites/229/2293615/logo_large.jpg?1')"></div>
                <form method="PATCH" enctype="multipart/form-data" action="/rest/sites/2293615/logo">
                    <input type="hidden" name="nonce" value="6a1d98ebeadf76a3">      
                    <input type="hidden" name="site_id" value="2293615">
                    <input type="hidden" name="MAX_FILE_SIZE" value="4194304"><!--4MB-->
                    <label class="change-btn" for="avatar-change">
                        更换头像
                        <input id="avatar-change" type="file" name="logo" accept="image/*">
                    </label>
                </form>
            </div>

            <form class="form-basic">
               
                <div class="line-wrap"> 
                    <h1 class="title">基本信息</h1>
                </div> 

                <div class="line-wrap">             
                    <label class="label">真实姓名</label>
                    <div class="input-wrap">
                         <input type="text" class="nomal-input" name="user_realname" value="" data-name="真实姓名" autocomplete="off" data-target="form-basic">
                        <i></i>
                    </div>
                </div>

                <div class="line-wrap">
                    <label class="label">性别</label>
                    <div class="input-wrap">
                        <div class="is-select select-input" name="user_gender"><a class="placeholder">不详</a><ul class="option-list"><li class="option-item" data-value="不详">不详</li><li class="option-item" data-value="男">男</li><li class="option-item" data-value="女">女</li></ul></div>
                        <i></i>
                    </div>
                </div>

                <div class="line-wrap">
                    <label class="label">生日</label>
                    <div class="input-wrap">
                        <div class="is-select select-input birthday" name="year"><a class="placeholder">年</a><ul class="option-list"><li class="option-item" data-value="0000">年</li><li class="option-item" data-value="1934">1934</li><li class="option-item" data-value="1935">1935</li><li class="option-item" data-value="1936">1936</li><li class="option-item" data-value="1937">1937</li><li class="option-item" data-value="1938">1938</li><li class="option-item" data-value="1939">1939</li><li class="option-item" data-value="1940">1940</li><li class="option-item" data-value="1941">1941</li><li class="option-item" data-value="1942">1942</li></ul></div>

                        <div class="is-select select-input birthday" name="month"><a class="placeholder">月</a><ul class="option-list"><li class="option-item" data-value="00">月</li><li class="option-item" data-value="01">01</li><li class="option-item" data-value="02">02</li><li class="option-item" data-value="03">03</li><li class="option-item" data-value="04">04</li><li class="option-item" data-value="05">05</li><li class="option-item" data-value="06">06</li><li class="option-item" data-value="07">07</li><li class="option-item" data-value="08">08</li><li class="option-item" data-value="09">09</li><li class="option-item" data-value="10">10</li><li class="option-item" data-value="11">11</li><li class="option-item" data-value="12">12</li></ul></div>

                        <div class="is-select select-input birthday" name="day" id="day"><a class="placeholder">日</a><ul class="option-list"><li class="option-item" data-value="00">日</li><li class="option-item" data-value="01">01</li><li class="option-item" data-value="02">02</li><li class="option-item" data-value="03">03</li><li class="option-item" data-value="04">04</li><li class="option-item" data-value="05">05</li><li class="option-item" data-value="06">06</li><li class="option-item" data-value="07">07</li><li class="option-item" data-value="08">08</li><li class="option-item" data-value="09">09</li><li class="option-item" data-value="10">10</li><li class="option-item" data-value="11">11</li><li class="option-item" data-value="12">12</li><li class="option-item" data-value="13">13</li><li class="option-item" data-value="14">14</li><li class="option-item" data-value="15">15</li><li class="option-item" data-value="16">16</li><li class="option-item" data-value="17">17</li><li class="option-item" data-value="18">18</li><li class="option-item" data-value="19">19</li><li class="option-item" data-value="20">20</li><li class="option-item" data-value="21">21</li><li class="option-item" data-value="22">22</li><li class="option-item" data-value="23">23</li><li class="option-item" data-value="24">24</li><li class="option-item" data-value="25">25</li><li class="option-item" data-value="26">26</li><li class="option-item" data-value="27">27</li><li class="option-item" data-value="28">28</li><li class="option-item" data-value="29">29</li><li class="option-item" data-value="30">30</li><li class="option-item" data-value="31">31</li></ul></div>
                        <i></i>
                    </div>
                </div>
                <div class="line-wrap">
                    <label class="label">简介</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="description" value="" autocomplete="off" data-target="form-basic">
                        <i></i>
                    </div>
                </div>
                <div class="line-wrap">
                    <label class="label">居住城市</label>
                    <div class="input-wrap">
                        <div class="is-select select-input city" name="sheng"><a class="placeholder">湖南</a><ul class="option-list"><li class="option-item" data-value=""></li><li class="option-item" data-value="安徽">安徽</li><li class="option-item" data-value="澳门">澳门</li><li class="option-item" data-value="北京">北京</li><li class="option-item" data-value="福建">福建</li><li class="option-item" data-value="甘肃">甘肃</li><li class="option-item" data-value="广东">广东</li><li class="option-item" data-value="广西">广西</li><li class="option-item" data-value="贵州">贵州</li><li class="option-item" data-value="海南">海南</li><li class="option-item" data-value="河北">河北</li><li class="option-item" data-value="河南">河南</li><li class="option-item" data-value="黑龙江">黑龙江</li><li class="option-item" data-value="湖北">湖北</li><li class="option-item" data-value="湖南">湖南</li><li class="option-item" data-value="吉林">吉林</li><li class="option-item" data-value="江苏">江苏</li><li class="option-item" data-value="江西">江西</li><li class="option-item" data-value="辽宁">辽宁</li><li class="option-item" data-value="内蒙古">内蒙古</li><li class="option-item" data-value="宁夏">宁夏</li><li class="option-item" data-value="青海">青海</li><li class="option-item" data-value="山东">山东</li><li class="option-item" data-value="山西">山西</li><li class="option-item" data-value="陕西">陕西</li><li class="option-item" data-value="上海">上海</li><li class="option-item" data-value="四川">四川</li><li class="option-item" data-value="台湾">台湾</li><li class="option-item" data-value="天津">天津</li><li class="option-item" data-value="西藏">西藏</li><li class="option-item" data-value="香港">香港</li><li class="option-item" data-value="新疆">新疆</li><li class="option-item" data-value="云南">云南</li><li class="option-item" data-value="浙江">浙江</li><li class="option-item" data-value="重庆">重庆</li><li class="option-item" data-value="海外">海外</li></ul></div>
                        <div class="is-select select-input city" name="shi"><a class="placeholder">长沙</a><ul class="option-list"><li class="option-item" data-value=""></li><li class="option-item" data-value="张家界">张家界</li><li class="option-item" data-value="岳阳">岳阳</li><li class="option-item" data-value="怀化">怀化</li><li class="option-item" data-value="永州">永州</li><li class="option-item" data-value="邵阳">邵阳</li><li class="option-item" data-value="娄底">娄底</li><li class="option-item" data-value="益阳">益阳</li><li class="option-item" data-value="湘潭">湘潭</li><li class="option-item" data-value="长沙">长沙</li><li class="option-item" data-value="郴州">郴州</li><li class="option-item" data-value="衡阳">衡阳</li><li class="option-item" data-value="常德">常德</li><li class="option-item" data-value="湘西">湘西</li><li class="option-item" data-value="株洲">株洲</li></ul></div>
                        <div class="is-select select-input city" name="xian"><a class="placeholder"></a><ul class="option-list"><li class="option-item" data-value=""></li><li class="option-item" data-value="望城">望城</li><li class="option-item" data-value="马坡岭">马坡岭</li><li class="option-item" data-value="浏阳">浏阳</li><li class="option-item" data-value="宁乡">宁乡</li><li class="option-item" data-value="长沙">长沙</li></ul></div>
                        <i></i>
                    </div>
                </div>
                <div class="line-wrap">
                    <label class="label">个人主页</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="user_homepage" value="" autocomplete="off" placeholder="" data-target="form-basic">
                        <i></i>
                    </div>
                </div>
                <span id="form-basic" class="alert-text"></span>
                <div class="line-wrap">
                    <div class="input-wrap">
                        <input type="submit" class="submit-btn" value="保存">
                    </div>
                </div>
            </form>
        </div>

        <div class="content content-bottom">
            <form class="form-contact">
                <div class="line-wrap">     
                    <h1 class="title">联系信息</h1>                   
                </div>

                <div class="line-wrap">             
                    <label class="label">邮政编码</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="user_zipcode" value="" autocomplete="off" placeholder="" data-target="form-contact">
                        <i></i>
                    </div>
                </div>
                <div class="line-wrap">             
                    <label class="label">地址</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="user_address" value="" autocomplete="off" placeholder="" data-target="form-contact">
                        <i></i>
                    </div>
                </div>
                <div class="line-wrap">             
                    <label class="label">QQ号码</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="user_qq" value="" autocomplete="off" placeholder="" data-target="form-contact">
                        <i></i>
                    </div>
                </div>
                <div class="line-wrap">             
                    <label class="label">电话</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="user_mobile" value="" autocomplete="off" placeholder="" data-target="form-contact">
                        <i></i>
                    </div>
                </div>
               
                <div class="line-wrap">
                    <div class="input-wrap">
                        <input type="submit" class="submit-btn" value="保存">
                    </div>
                </div>
            </form>
        </div>


		 <div class="content content-bottom">
            <form class="form-contact">
                <div class="line-wrap">     
                    <h1 class="title">账号安全</h1>                   
                </div>

                <div class="line-wrap">             
                    <label class="label">用户名</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="user_zipcode" value="" autocomplete="off" placeholder="" data-target="form-contact">
                        <i></i>
                    </div>
                </div>              
                <div class="line-wrap">             
                    <label class="label">博客名字</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="user_qq" value="" autocomplete="off" placeholder="" data-target="form-contact">
                        <i></i>
                    </div>
                </div>
                <div class="line-wrap">             
                    <label class="label">密码</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="user_mobile" value="" autocomplete="off" placeholder="" data-target="form-contact">
                        <i></i>
                    </div>
                </div>
				<div class="line-wrap">             
                    <label class="label">确认密码</label>
                    <div class="input-wrap">
                        <input type="text" class="nomal-input" name="user_mobile" value="" autocomplete="off" placeholder="" data-target="form-contact">
                        <i></i>
                    </div>
                </div>
               
                <div class="line-wrap">
                    <div class="input-wrap">
                        <input type="submit" class="submit-btn" value="保存">
                    </div>
                </div>
            </form>
        </div>
    </div>
</main>
 <%@ include file="../main_index/foot.jsp"%>
</body>
</html>