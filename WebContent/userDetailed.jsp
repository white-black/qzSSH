<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>用户信息</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap"s JavaScript plugins) -->
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
							$("html,body").animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
					</script>
<style>
	.h3,form{
		margin-left:200px;
	}
	input{
		max-width:300px;
	}
</style>
</head>
<body>
	<div class="container">
	<div style="margin-top:40px;font-size:20px;"><a href="index.jsp">回到首页</a></div>
				<div class="contact">
				<div class="contact-in">
				<div class="row">
					<div class="col-md-3">
						<div class="popular">
							<h3>用户名:<s:property value="#session.user.UName"/> </h3>
							<div class="dropdown">
								<ul class="popular-in">
									<li><a href="user.action?a_key=1"><i> </i>修改密码</a>
									</li>
									<li><a href="getUserMessage.action"><i> </i>个人信息</a>
									</li>
									<li><a href="getResumeMessage.action?id=<s:property value="#session.user.UId"/>"><i> </i>简历</a>
									</li>
									<li><a href="getRecruitFromUser.action"><i> </i>投递简历的职位</a>
									</li>	
								</ul>
							</div>
						</div>
					</div>
					<s:if test="a_key == 2">
			        	<script>
			        		$(function(){
			       				$("#main").hide();
			        		});
			        	</script>
			        	<%@ include file="userMessage.jsp" %>
			        </s:if>
			        <s:elseif test="a_key == 21">
			        	<script>
			        		$(function(){
			       				$("#main").hide();
			        		});
			        	</script>
			        	<%@ include file="userMessageAlter.jsp" %>
			        </s:elseif>
			        <s:elseif test="a_key == 3">
			        	<script>
			        		$(function(){
			       				$("#main").hide();
			        		});
			        	</script>
			        	<%@ include file="userResume.jsp" %>
			        </s:elseif>
			        <s:elseif test="a_key == 31">
			        	<script>
			        		$(function(){
			       				$("#main").hide();
			        		});
			        	</script>
			        	<%@ include file="userResumeAlter.jsp" %>
			        </s:elseif>
			        <s:elseif test="a_key == 4">
			        	<script>
			        		$(function(){
			       				$("#main").hide();
			        		});
			        	</script>
			        	<%@ include file="userRecruit.jsp" %>
			        </s:elseif>
					<div class="col-md-9" id="main">
						<div class="contact-left">
							<div class="account">
								<h3 class="h3">修改密码</h3>
									<form method="post" action="alterPassword.action?id=<s:property value="#session.user.UId"/>">
									<div>
										<span class="name-in">原密码</span>
										<input class="my_width" type="password">
									</div> 	
									<div>			
										<span class="name-in">新密码</span>
										<input class="my_width" type="password" name="user.UPassword">
									</div>			
									<div>			
										<span class="name-in">确认密码</span>
										<input class="my_width" type="password">
									</div>
									<div>			
										<input type="submit" value="提交" name="btn_val" style="margin:auto;">
									</div>	
								</form>
							</div>
				  </div>
					</div>
				</div>

	 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: "toTop", // fading element id
								containerHoverID: "toTopHover", // fading element hover id
								scrollSpeed: 1200,
								easingType: "linear" 
					 		};
							*/
							
							$().UItoTop({ easingType: "easeOutQuart" });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</div>
</div>
</div>
</body>
</html>