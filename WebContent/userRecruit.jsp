<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
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
</head>
<body>
<div class="col-md-9">
	<div class="contact-left">
		<div class="account">
			<h3 class="h3">投递简历的职位</h3>
				<form>
					<div style="clear:both;"></div>
					<table class="table">
					   <thead>
					      <tr>
					         <th>职位名称</th>
					         <th>公司名称</th>
					         <th>投递时间</th>
					         <th>操作</th>
					      </tr>
					   </thead>
					   <tbody>
					   	<s:iterator value="userRecruits" status="st">
					      <tr>
					         <td><a href="redirectRecruit?id=<s:property value="tbRecruit.rcId"/>"><s:property value="tbRecruit.rcName"/></a></td>
					         <td><a href="redirectCompany?id=<s:property value="tbRecruit.tbCompany.CId"/>"><s:property value="tbRecruit.tbCompany.CComname"/></a></td>
					         <td><s:property value="urcDate"/></td>
					          <td>
	                                <a class="link-del" href="delRecuritFromUser.action" onclick="del()">删除</a>
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