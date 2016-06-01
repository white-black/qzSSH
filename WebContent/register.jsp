<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
					</script>
<style>
	form{
		margin-left:100px;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("#email").blur(function(){
			var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/; //验证邮箱的正则表达式
			if(!reg.test($("#email").val()))
			    {
					$("#emailmes").text("请输入正确的邮箱格式");
			        return false;
			    }else{
			    	$("#emailmes").text("");
			    }
		});
		$("#password2").blur(pasmes());
		$("#but1").click(pasmes);		
		$("#but2").click(pasmes);		
		function pasmes(){
			if($("#password1").val() != $("#password2").val()){
				$("#passwordmes").text("确认密码与密码不一致，请重新输入");
				$("#password1").val("");
				$("#password2").val("");
				return false;
			}else{
				$("#passwordmes").text("");
			}
		}
	});
</script>
</head>
<body>
<div class="container-fiuled" style="background:url(images/back.jpg);">
		<div class="container">
			<%@ include file="header.jsp" %>		
		</div>
	</div>
	<div class="container">
		<div class="contact">
		<div class="contact-in">
		<h2>注册</h2>
		<div class=" col-md-9 contact-left">
			    <form method="post" action="register.action">
			    	<div>
				    	<span>用户名</span>
				    	<input name="username" type="text" class="textbox my_width">
				    </div>
						<div>
				    	<span>邮箱</span>
				    	<input id="email" name="email" type="text" class="textbox my_width">
				    	<span id="emailmes" style="color:red;"></span>
				    </div>
				    <div>
				    	<span>密码</span>
				    	<input id="password1" name="password" type="password" class="textbox my_width">
				    </div>
				    <div>
				    	<span>确认密码</span>
				    	<input id="password2" name="password2" type="password" class="textbox my_width">
				    	<span id="passwordmes" style="color:red;"></span>
				    </div>
						<div class="row">
							<div class="col-md-2">
								<span><input id="but1" type="submit" value="学生注册" name="btn_val"></span>
							</div>
							<div class="col-md-2">
								<span><input id="but2" type="submit" value="企业注册" name="btn_val"></span>
							</div>
						</div>
					
			    </form>
		  </div>

		<div class="col-md-3 contact-right">
		     	<h5>提示：</h5>
				    <p>请输入真实信息，以便学生或企业浏览</p>
		    </div>
			  <div class="clearfix"></div>
		 </div>
    		</div>
    </div>
<script type="text/javascript">
				$(document).ready(function() {
					/*
					var defaults = {
			  			containerID: 'toTop', // fading element id
						containerHoverID: 'toTopHover', // fading element hover id
						scrollSpeed: 1200,
						easingType: 'linear' 
			 		};
					*/
					
					$().UItoTop({ easingType: 'easeOutQuart' });
					
				});
			</script>
		<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</body>
</html>