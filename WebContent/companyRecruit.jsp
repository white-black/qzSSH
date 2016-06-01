<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link href="css/myStyle.css" rel="stylesheet" type="text/css" media="all" />	
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
<div class="col-md-9" id="recruit">
	<div class="contact-left">
		<div class="account">
			<h3 class="h3">职位</h3>
				<form method="post" action="recruit">
					<a id="modify" class="modify" href="company.action?a_key=21" style="">新增</a>
					<div style="clear:both;"></div>
					<table class="table">
					   <thead>
					      <tr>
					         <th>职位名称</th>
					         <!-- <th>职位类型</th> -->
					         <th>发布时间</th>
					         <th>操作</th>
					      </tr>
					   </thead>
					   <tbody>
						   <s:iterator value="recruits" status="st">
								<tr>
									<td><s:property value="rcName"/></td> 
		                            <%-- <td><s:property value="rcBoard"/></td> --%>
		                            <td><s:property value="rcStarttime"/></td>
		                            <td>
		                                <a class="link-del" href="getThisRecruit.action?id=<s:property value="rcId"/>">详细</a>
	                                <a id="del" class="link-del" href="delThisRecruit.action?id=<s:property value="rcId"/>" onclick="return del()">删除</a>
		                            <script type="text/javascript">
		                            	function del(){
		                            		if(!confirm("确认要删除？")){ 
		                            			window.event.returnValue = false; 
		                            			} 
		                            	}
		                            </script>
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
