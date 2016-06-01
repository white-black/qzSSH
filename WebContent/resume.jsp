<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>简历信息</title>
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

</head>
<body>
	<div class="container-fiuled" style="background:url(images/back.jpg);">
		<div class="container">
			<%@ include file="header.jsp" %>		
		</div>
	</div>
	<!---->
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="account">
					<h3 class="h3">个人信息</h3>
						<form>
							<div style="clear:both;"></div>
							<div>
								<span>真实姓名</span>
								<p><s:property value="user.URelname"/></p>
							</div> 	
							<div>			
								<span class="name-in">性别</span>
								<p><s:property value="user.USex"/></p>
							</div>			
							<div>			
								<span class="name-in">学校</span>
								<p><s:property value="user.USchool"/></p>
							</div>	
							<div>			
								<span class="name-in">专业</span>
								<p><s:property value="user.UPrefessional"/></p>
							</div>
							<div>			
								<span class="name-in">学历</span>
								<p><s:property value="user.URecord"/></p>
							</div>	
							<div>			
								<span class="name-in">联系方式</span>
								<p><s:property value="user.UPhone"/></p>
							</div>	
							<div>			
								<span class="name-in">邮箱</span>
								<p><s:property value="user.UEmail"/></p>
							</div>	
							<div>			
								<span class="name-in">出生时间</span>
								<p><s:property value="user.UBirdate"/></p>
							</div>	
						</form>
				</div>
			</div>
			<div class="col-md-6">
				<div class="account">
					<h3 class="h3">简历</h3>
						<form >
							<div style="clear:both;"></div>
							<div>
								<span>工作类型</span>
								<p><s:property value="resume.rsType"/></p>
							</div> 	
							<div>			
								<span class="name-in">所求职位</span>
								<p><s:property value="resume.rsEva"/></p>
							</div>			
							<div>			
								<span class="name-in">期望薪资</span>
								<p><s:property value="resume.rsMoney"/></p>
							</div>	
							<div>			
								<span class="name-in">自我评价</span>
								<p><s:property value="resume.rsEva"/></p>
							</div>
						</form>
				</div>
			</div>
		</div>
	</div>
	<!---->
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