<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>

<head>
<title>首页</title>
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
	<s:if test="#request.register_flag == 0">
		<script>
			alert("注册成功");
		</script>
	</s:if>
	<s:if test="#request.frist_flag != 1 &&#request.search_flag != 1">
		<script>
		window.onload =function ()
		{
			window.location='getSomerecruitAndNews.action';
		};
		</script>		
	</s:if>
	<!--header-->
	<div class="header">
		<div class="container">
		<%@ include file="header.jsp" %>
	<div class="banner">
		<div class="banner-in">
		<!---->
		<div class="wmuSlider example1">
			   <div class="wmuSliderWrapper">
				<article style="position: absolute; width: 100%; opacity: 0;"> 
				   	<div class="banner-wrap">
				   	     <%--  <h2>1 </h2>
						  <h5>11</h5>
						  <p>11 <span>11</span></p> --%>
						  <p>为你的职业自豪。要有敬业的精神。要尊重自己行业里面的传统和精神。要对业务精益求精，要把日常的工作当做一件神圣的事。</p>				   		 
				   	 </div>
					 
			</article>
			 <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	<div class="banner-wrap">
					  		<%-- <h2>2 </h2>
						  <h5>22</h5>
						  <p>22<span>22</span></p> --%>
				   		 <p>人是为事业而活，不是为工作而活。人一生中会换很多工作，不必要把找工作看得太重要。</p>
				   	 </div>
					 
			</article>
		</div>
	</div>
		<!---->
		  <script src="js/jquery.wmuSlider.js"></script> 
			  <script>
       			$('.example1').wmuSlider({
					 pagination : false,
				});         
   		     </script> 	
		<!---->
	</div>
	</div>
	</div>
	</div>
	<!---->
	<div class="content">
		<div class="container">
		<div class="content-grid">
			<%@ include file="aside.jsp" %>
			<!---->
			<!-- **************跳转***************** -->
			<div class="col-md-8 food-grid">
				<s:iterator value="indexRecruits" status="st">
					<div class="row cup-in ">
						<div class="col-md-7">
							<a class="details" href="redirectRecruit.action?id=<s:property value="rcId"/>"><s:property value="rcName"/></a>
							<p><s:property value="rcMoney"/> /<s:property value="rcExp"/>/<s:property value="rcRecord"/></p>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-5">
							<s:property value="tbCompany.CComname"/>
							<p><a href="redirectCompany.action?id=<s:property value="tbCompany.CId"/>">公司简介</a></p>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div style="clear:both;"> </div>
				</s:iterator>
				<div class="browse">
					<a href="getAllRecruits.action?pageNumber=1" class="more" style="background-color:#2E8E26;float:right;">查看更多</a>
				</div>
				<div style="clear:both;"> </div>
				<!---->
			</div>
			<div class="clearfix"> </div>
		</div>
		</div>
	</div>
</body>
</html>