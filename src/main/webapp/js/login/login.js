$(function () {
    //邮箱验证
    var em = function () {
        var email = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
        var iemail = $("#email").val();
        if (!email.test(iemail)) {
            $("#inemail").text("请输入正确的邮箱格式");
            return false;
        } else {
            $("#inemail").text("");
            return true;
        }
    }
    $("#email").change(em);


    //注册用户名验证
    var us = function () {
        var iusername = $("#username").val();
        var username = /^[a-zA-z]\w{3,15}$/;
        if (!username.test(iusername)) {
            $("#inusername").text("请输入4-16位以字母开头的字符");
            return false;
        } else {
            $("#inusername").text("");
            return true;
        }
    }
    $("#username").change(us);

    //登录用户名验证
    var lous = function () {
        var iusername = $("#lousername").val();
        var username = /^[a-zA-z]\w{3,15}$/;
        if (!username.test(iusername)) {
            $("#loinusername").text("请输入4-16位以字母开头的字符");
            return false;
        } else {
            $("#loinusername").text("");
            return true;
        }
    }
    $("#lousername").change(lous);

    //密码不一致验证
    var topass = function () {
        var password = /^(\w){6,20}$/;
        var ipassword = $("#password").val();
        var ipassword2 = $("#password2").val();
        if (ipassword != ipassword2) {
            $("#inpassword2").text("两次输入不一致");
            return false;
        } else {
            $("#inpassword2").text("");
            return true;
        }
    }
    $("#password2").change(topass);

    //注册密码验证
    var pass = function () {
        var password = /^(\w){6,20}$/;
        var ipassword = $("#password").val();
        if (!password.test(ipassword)) {
            $("#inpassword").text("请输入6-20位字母或者数字");
            return false;
        } else {
            $("#inpassword").text("");
            return true;
        }
    }
    $("#password").change(pass);

    //登录密码验证
    var lopass = function () {
        var password = /^(\w){6,20}$/;
        var ipassword = $("#lopassword").val();
        if (!password.test(ipassword)) {
            $("#loinpassword").text("请输入6-20位字母或者数字");
            return false;
        } else {
            $("#loinpassword").text("");
            return true;
        }
    }
    $("#lopassword").change(lopass);

    //注册
    var register = function () {
        var email = $("#email").val();
        var username = $("#username").val();
        var password = $("#password").val();
        if (em && us && pass && topass) {
            $.ajax({
                type: "POST",
                url: BASE + "/login/register",
                data: {'email': email, 'username': username, 'password': password},
                dataType: 'json',
                success: function (data) {
                    if (data.success) {
                        showInfo("注册成功", function () {
                        }, 3);
                        $("#button_login").click();
                    }
                }
            });
        }
    }
    $("#register").click(register);

    //登录
    var login = function () {
        var lousername = $("#lousername").val();
        var lopassword = $("#lopassword").val();
        if (lous && lopass) {
            $.ajax({
                type: "POST",
                url: BASE + "/blog/login/toHome",
                data: {'username': lousername, 'password': lopassword},
                dataType: 'json',
                success: function (data) {
                    if (data.success) {
                        showInfo("登录成功", function () {
                        }, 3);
                        $("span.usercc").html("欢 迎 " + lousername);
                        window.location.href = BASE + "/blog/index";1
                    } else {
                        showInfo("账号或密码错误，请重新输出", function () {
                        }, 3);
                        $("#lopassword").val("");
                    }
                }
            });
        }
    }
    $("#login").click(login);

})