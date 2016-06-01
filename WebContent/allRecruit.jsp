<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>

<head>
<title>所有职位</title>
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
				<s:iterator value="recruits" status="st">
					<div class="row cup-in ">
						<div class="col-md-7">
							<a  class="details" href="redirectRecruit.action?id=<s:property value="rcId"/>"><s:property value="rcName"/></a>
							<p><s:property value="rcMoney"/> /<s:property value="rcExp"/>/<s:property value="rcRecord"/></p>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-5">
							<s:property value="tbCompany.CComname"/>
							<p><a href="redirectCompany.action?id=<s:property value="rcId"/>">公司简介</a></p>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div style="clear:both;"> </div>
				</s:iterator>
				<!-- 分页数字开始 -->
				<div style="font-size:20px;"> 
                    <!-- 定义pageNumber值为1的URL值，以及【首页】链接 -->
						<s:property value="fenye.pageNumber"/>|<s:property value="fenye.totalPage"/>
						<s:url id="firstPage" action='getAllRecruits'>
							<s:param name='pageNumber'>1</s:param>
						</s:url>
						<s:a href="%{firstPage}">首页</s:a>
						<s:url id="prePage" action='getAllRecruits'>
							<s:param name="pageNumber">
								<s:property value="pageNumber-1"/>
							</s:param>
						</s:url>
						<s:a href="%{prePage}">上一页</s:a>
						<s:url id="nextPage" action='getAllRecruits'>
							<s:param name="pageNumber">
								<s:property value="pageNumber+1"/>
							</s:param>
						</s:url>
						<s:a href="%{nextPage}">下一页</s:a>
						
						<s:url id="lastPage" action='getAllRecruits'>
							<s:param name="pageNumber">
								<s:property value="fenye.totalPage"/>
							</s:param>
						</s:url>
						<s:a href="%{lastPage}">末页</s:a>
                    </div>
				<!-- 分页数字结束 -->
				<div style="clear:both;"> </div>
				<!---->
			</div>
			<div class="clearfix"> </div>
		</div>
		</div>
	</div>
</body>
</html>