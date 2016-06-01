<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="logo">
	<h1><a href="index.html">校园找工作</a></h1>
</div>
<div class="header-top" style="background:url(images/back.jpg) no-repeat center;">
	<div class="header-top-in">
		<s:if test="#session.user == null && #session.company == null">
			<ul class="header-grid">
				<li  ><a href="${pageContext.request.contextPath }/register.jsp">注册</a> <label>/</label></li>
				<li ><a href="${pageContext.request.contextPath }/login.jsp">登录</a> </li>		
			</ul>					
		</s:if>
		<s:else>
			<ul class="header-grid" style="color:white;">
				<li  >你好 <label>！</label></li>
				<li style="color:white;"><a href="userDetailed.action"><s:property value="#session.user.UName"/></a><a href="companyDetailed.action"><s:property value="#session.company.CName"/></a> </li>
				<li><a href="quit.action">退出</a></li>		
			</ul>
		</s:else>
		<div class="act"> 
			<a href="#" class="done">开始找工作</a>
		</div>
	<div class="clearfix"> </div>
	</div>
	<s:if test="#session.user == null && #session.company == null">
		<script type="text/javascript">
			function mySub(){
				alert("请先登录");
				return false;
			}
		</script>
	</s:if>
	<s:if test="#session.user == null && #session.company != null">
		<script type="text/javascript">
			$(function(){
				$("#myResume").hide();
				$("#zhiwei").hide();
			});
		</script>
	</s:if>
	<s:if test="#session.company == null && #session.user != null">
		<script type="text/javascript">
			$(function(){
				$("#myRecruit").hide();
				$("#jianli").hide();
			});
		</script>
	</s:if>
	<ul class="grid-header">
		<li id="myResume"><a href="getResumeMessage.action?id=<s:property value="#session.user.UId"/>" onClick="return mySub()">我的简历</a> <label>/</label></li>
		<li id="myRecruit"><a href="recruit.action?a_key=2" onClick="return mySub()">我的职位</a></li>	
	</ul>
	<div class="clearfix"> </div>
</div>
<!---->
<div class="header-bottom">
	<div class="top-nav">
		<span class="menu"> </span>
		<ul>
			<li class="active" ><a href="${pageContext.request.contextPath }/getSomerecruitAndNews.action" >首页</a><label>| </label> </li>
			<li class="nav_red" id="jianli"><a href="getAllResumes.action?pageNumber=1" onClick="return mySub()">简历</a><label>| </label></li>
			<li class="nav_red" id="zhiwei"><a href="getAllRecruits.action?pageNumber=1" onClick="return mySub()">职位</a></li>
		</ul>
		<!--script-->
	<script>
		$("span.menu").click(function(){
			$(".top-nav ul").slideToggle(500, function(){
			});
		});
</script>
	</div>
		<div class="search">
			<form method="post" action="searchRecruit.action">
				<input type="text" value="查找职位" name="searchRecruit" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}" >
					<input type="submit" value="">
				</form>
			</div>
	<div class="clearfix"> </div>
</div>
<!---->