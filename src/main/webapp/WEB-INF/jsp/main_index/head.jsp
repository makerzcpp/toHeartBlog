<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!-- <div class="mask-l" style="background-color: #fff; width: 100%; height: 100%; position: fixed; top: 0; left:0; z-index: 9999999;"></div> removed by integration -->
<script src="${BASE}/js/login/jquery.min.js"></script>
<header class="header">
    <div class="container">
        <div class="logo"><a href="#"><img src="${BASE}/images/blog-logo.png"></a></div>
        <ul class="site-nav site-navbar">
            <li id="menu-item-10"
                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-10"><a
                    href="${BASE}/blog/index/home/">首页</a></li>
            <li id="menu-item-20" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-20"><a
                    href="${BASE}/blog/index/photoblog/">图博</a></li>
            <li id="menu-item-21"
                class="menu-item menu-item-type-taxonomy menu-item-object-category current-menu-item menu-item-21"><a
                    href="#">论坛</a></li>
            <!-- <li id="menu-item-23" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-23"><a href="#">资源</a></li>  暂不开放，没那么大空间的服务器-->
            <li id="menu-item-23" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-23"><a
                    href="${BASE}/blog/userinfo/index/">个人中心</a></li>
        </ul>
        <span class="usercc">
        								<a href="${BASE}/blog/index/login" class="signin-loader">Hi, 请登录</a>
 				&nbsp; &nbsp; <a href="${BASE}/blog/index/login/" class="signup-loader">我要注册</a>
				&nbsp; &nbsp; <a href="#">找回密码</a>
		</span>
    </div>
</header>
<script type="text/javascript">
    $(function () {
        $.ajax({
            url:"http://www.toheartblog.com/blog/login/islogin",
            dataType:"json",
            type:"GET",
            success:function (data) {
                if(data.status==200) {
                    var _data=JSON.parse(data.data);
                    var html=_data.userName+"，欢迎来到ZC！<a href=\"http://www.toheartblog.com/login/logout.html\" class=\"signout-loader\">[退出]</a>";
                    $(".usercc").html(html);
                }
            }
        })
    });
</script>



