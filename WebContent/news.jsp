<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>

<head>
<title>新闻内容页</title>
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
	<!--header-->
	<div class="container-fiuled" style="background:url(images/back.jpg);">
		<div class="container">
			<%@ include file="header.jsp" %>		
		</div>
	</div>
	<!---->
	<div class="content">
		<div class="container" style="margin-top:40px;">
		<div class="content-grid">
			<%@ include file="aside.jsp" %>
			<!---->
			<!-- **************跳转***************** -->
			<div class="col-md-8 food-grid">
				<s:property value="news.neContent"/>
				<div style="clear:both;"> </div>
				<!---->
			</div>
			<div class="clearfix"> </div>
		</div>
		</div>
	</div>
</body>
</html>