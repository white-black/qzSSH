<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>后台管理</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link href="css/myStyle.css" rel="stylesheet" type="text/css" media="all" />	
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
		margin-left:100px;
	}
	input{
		max-width:300px;
	}
	.modify{
		float:right;
		margin-right:200px;
	}
</style>
<script>
	function del(){
		if(!confirm("确认要删除？")){ 
			window.event.returnValue = false; 
		} 
	}
</script>
</head>
<body>
	<div class="container">
	<div style="margin-top:40px;font-size:20px;"><a href="index.jsp">回到首页</a></div>
		<div class="contact">
			<div class="contact-in">
				<div class="row">
					<div class="col-md-3">
						<div class="popular">
							<h3>管理员：admin</h3>
							<div class="dropdown">
								<ul class="popular-in">
									<li><a href="${pageContext.request.contextPath }/getAllCompanys?a_key=1" ><i> </i>公司管理</a>
									</li>
									<li><a href="${pageContext.request.contextPath }/getAllUsers?a_key=2" ><i> </i>学生管理</a>
									</li>
									<li><a href="${pageContext.request.contextPath }/getAllNewes.action?a_key=3" ><i> </i>就业指导</a>
									</li>	
								</ul>
							</div>
					</div>
			</div>
<div class="col-md-9">					
	<div class="contact-left">
	<s:if test="a_key == 2">
				<script>
	        		$(function(){
	       				$("#main").hide();
	        		});
	        	</script>
	        	<%@ include file="adminStudent.jsp" %>
			</s:if>
			<s:elseif test="a_key == 3">
				<script>
	        		$(function(){
	       				$("#main").hide();
	        		});
	        	</script>
	        	<%@ include file="adminJyzd.jsp" %>
			</s:elseif>
		<div class="account" id="main">
			<h3 class="h3">公司管理</h3>
				<form>
					<div style="clear:both;"></div>
					<table class="table">
					   <thead>
					      <tr>
					      	 <th>公司注册名</th>
					         <th>公司名称</th>
					         <th>公司联系人</th>
					         <th>公司联系方式</th>
					         <th>注册时间</th>
					         <th>操作</th>
					      </tr>
					   </thead>
					   <tbody>
					   	<s:iterator value="companys" status="st">
					      <tr>
					      	<td><s:property value="CName"/> </td>
					         <td><s:property value="CComname"/> </td>
					         <td><s:property value="CRelname"/></td>
					         <td><s:property value="CRelphone"/></td>
					         <td><s:property value="CDate"/></td>
					          <td>
	                                <a class="link-del" href="delCompany.action?id=<s:property value="CId"/>" onclick="return del()">删除</a>
	                                &nbsp;&nbsp;
	                            </td>
					      </tr>
					      </s:iterator>
					   </tbody>
					</table>
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