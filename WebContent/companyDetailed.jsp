<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>公司信息</title>
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
	.h3,form{
		margin-left:200px;
	}
	input{
		max-width:300px;
	}
	.modify{
		float:right;
		margin-right:200px;
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
							<h3>公司用户名:<s:property value="#session.company.CName"/></h3>
							<div class="dropdown">
								<ul class="popular-in">
									<li><a href="company.action?a_key=1">公司信息</a> 
									</li>
									<li><a href="recruit.action?a_key=2">职位</a>
									</li>
									<li><a href="getResumeFromCompany.action?a_key=3">收到的简历</a>
									</li>	
								</ul>
							</div>
						</div>
					</div>
					<s:if test='a_key == 2'>
			        	<script>
			        		$(function(){
			       				$("#main").hide();
			        		});
			        	</script>
			        	<%@ include file="companyRecruit.jsp" %>
			        </s:if>
			        <s:elseif test="a_key == 3">
			        	<script>
			        		$(function(){
			       				$("#main").hide();
			        		});
			        	</script>
			        	<%@ include file="companyResume.jsp" %>
			        </s:elseif>
					<s:elseif test="a_key == 11">
						<script type="text/javascript">
							$(function(){
								$("#main").hide();
							});
						</script>
						<%@ include file="companyDetailedAlter.jsp" %>
					</s:elseif>
					<s:elseif test="a_key == 21">
						<script type="text/javascript">
							$(function(){
								$("#main").hide();
								$("#recruit").hide();
							});
						</script>
						<%@ include file="companyRecruitDetailedAlter.jsp" %>
					</s:elseif>
					<s:elseif test="a_key == 22">
						<script type="text/javascript">
							$(function(){
								$("#main").hide();
								$("#recruit").hide();
							});
						</script>
						<%@ include file="companyRecruitDetailed.jsp" %>
					</s:elseif>
					<div class="col-md-9" id="main">
						<div class="contact-left">
							<div class="account">
								<h3 class="h3">公司信息</h3>
									<form>
									<%-- ${pageContext.request.contextPath }/companyDetailedAlter.jsp --%>
									<a id="modify" class="modify" href="company.action?a_key=11">编辑<label class="glyphicon glyphicon-pencil"></label></a>
									<div style="clear:both;"></div>
									<div>
										<span>公司名称:</span>
										<p><s:property value="#session.company.CComname"/></p>
									</div> 	
									<div>			
										<span class="name-in">所在地:</span>
										<p><s:property value="#session.company.CLocation"/></p>
									</div>			
									<div>			
										<span class="name-in">联系人:</span>
										<p><s:property value="#session.company.CRelname"/></p>
									</div>	
									<div>			
										<span class="name-in">联系电话:</span>
										<p><s:property value="#session.company.CRelphone"/></p>
									</div>
								</form>
							</div>
				  </div>
					</div>
				</div>
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