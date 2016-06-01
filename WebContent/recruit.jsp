<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>职位信息</title>
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
<s:if test="setRecruit == 1">
	<script>
		alert("简历投递成功");
	</script>
</s:if>
	<div class="container-fiuled" style="background:url(images/back.jpg);">
		<div class="container">
			<%@ include file="header.jsp" %>		
		</div>
	</div>
	<!---->
	<div class="container">
		<div class="single">
			<div class="col-md-9  single-top">
				<div class="text-in">					
						<div class="single-men">
							<h2><s:property value="recruit.rcName"/></h2>
							<h3>人数/经验/工资/学历</h3>
							<h3><s:property value="recruit.rcCount"/>/<s:property value="recruit.rcExp"/>/<s:property value="recruit.rcMoney"/>/<s:property value="recruit.rcRecord"/></h3>
							<h5>职位介绍</h5>
							<p><s:property value="recruit.rcDec"/></p>
							<div style="height:50px;"></div>
							<h5>任职要求</h5>
							<p><s:property value="recruit.rcNeed"/></p>
							<div style="height:50px;"></div>
						</div>
						<s:if test="#session.user == null">
							<script>
								function sub_setRecruit(){
									alert("您还未登录，请登录后再进行投递简历");
									return false;
								}
							</script>
						</s:if>
						
						<div class="sub-in" style="margin-bottom:20px;">
							<form method="post" action="setRecruit.action?id=<s:property value="recruit.rcId"/>&setRecruit=0">
								<input type="submit" value="投递简历" onClick="return sub_setRecruit()">							
							</form>
						</div>
						<s:iterator value="comments" status="st">
							<ul class="comment-list">
			  		    	<h5 class="post-author_head">用户名： <a href="#" title="Posts by admin" rel="author"><s:property value="tbUser.UName"/></a></h5>
			  		         	<p><s:property value="ctContent"/></p>
			  		         	<li>
			  		          <%--  <div class="desc">
			  		        	&nbsp;&nbsp;&nbsp;&nbsp;<p>回复:</p>
			  		        	<span>回复内容</span>
			  		           </div> --%>
			  		           <div class="clearfix"></div>
			  		         </li>
			  		     </ul>
						</s:iterator>
		  		     <s:if test="#session.user == null">
		  		     	<script>
		  		     		function sub_setComment(){
		  		     			alert("您还未登录，请登录后再评论");
		  		     			return false;
		  		     		}
		  		     	</script>
		  		     </s:if>
                    <div class="comments-area">
		  		        	<h3>发表评论</h3>
							<form method="post" action="recruitsaveComment.action?id=<s:property value="company.CId"/>">
								<p>
									<label>内容</label>
									<textarea name="comment.ctContent"></textarea>
								</p>
								<div class="sub-in">
									<input type="submit" value="提交" onClick="return sub_setComment()">
								</div>
							</form>
					  </div>
				</div>
				
				
			</div>
				<div class="store-right">
					<h6><span>公司名称:</span><br>
					<a href="redirectCompany.action?id=<s:property value="company.CId"/>"><s:property value="company.CComname"/></a></h6>
				</div>		
				<%@ include file="companyOtherRecruits.jsp" %>
				<%-- <div class="col-md-3 single-bottom">
						<%@ include file="companyOtherRecruits.jsp" %>
						</div> --%>
						<div class="clearfix"> </div>
							</div>
						</div>	
					</div>
				<div class="clearfix"> </div>
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