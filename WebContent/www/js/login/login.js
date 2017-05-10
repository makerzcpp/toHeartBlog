$(function(){
	//邮箱验证
	var em = function(){
	var email = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
	var iemail = $("#email").val();
	if(!email.test(iemail) ){
		$("#inemail").text("请输入正确的邮箱格式");
		return false;
	}else{
		$("#inemail").text("");
		return true;
	}
	}
	$("#email").change(em);
	
	
	//注册用户名验证
	var us = function(){		
		var iusername = $("#username").val();
		var username = /^[a-zA-z]\w{3,15}$/;
		if(!username.test(iusername)){
			$("#inusername").text("请输入4-16位以字母开头的字符");
			return false;
		}else{
			$("#inusername").text("");
			return true;
		}
		}
		$("#username").change(us);
		
		//登录用户名验证
		var lous = function(){		
			var iusername = $("#lousername").val();
			var username = /^[a-zA-z]\w{3,15}$/;
			if(!username.test(iusername)){
				$("#loinusername").text("请输入4-16位以字母开头的字符");
				return false;
			}else{
				$("#loinusername").text("");
				return true;
			}
			}
			$("#lousername").change(lous);	
		
	//密码不一致验证
		var topass = function(){	
			var password=/^(\w){6,20}$/;
			var ipassword = $("#password").val();
			var ipassword2 = $("#password2").val();
			if(ipassword != ipassword2){
				$("#inpassword2").text("两次输入不一致");
				return false;
			}else{
				$("#inpassword2").text("");
				return true;
			}
			}
			$("#password2").change(topass);
			
	//注册密码验证	
	  var pass = function(){	
			var password=/^(\w){6,20}$/;
			var ipassword = $("#password").val();				
			if(!password.test(ipassword)){
				$("#inpassword").text("请输入6-20位字母或者数字");
				return false;
			}else{
				$("#inpassword").text("");
				return true;
			}			
			}
			$("#password").change(pass);
	
	//登录密码验证	
	var lopass = function(){	
	var password=/^(\w){6,20}$/;
	var ipassword = $("#lopassword").val();				
		if(!password.test(ipassword)){
			$("#loinpassword").text("请输入6-20位字母或者数字");
			return false;
			}else{
			$("#loinpassword").text("");
			return true;
			}			
			}
	$("#lopassword").change(lopass);				
				
	//注册
	var register = function(){
		var email = $("#email").val();
		var username = $("#username").val();
		var password = $("#password").val();
		if(em&&us&&pass&&topass){
			$.ajax({
				type : "POST",
				url : BASE+"/login/register",
				data : {'email':email,'username':username,'password':password},
				dataType : 'json',
				success : function(result) {
					if (result) {
						alert(1);
					}else{
						alert(2);
					}
				}
			});
		}
	}
	$("#register").click(register);
	
})