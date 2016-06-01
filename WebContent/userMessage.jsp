<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<div class="col-md-9">
	<div class="contact-left">
		<div class="account">
			<h3 class="h3">个人信息</h3>
				<form method="post" action="getUserMessage.action?id=<s:property value="#session.user.UId"/>">
					<a class="modify" href="user.action?a_key=21">编辑<label class="glyphicon glyphicon-pencil"></label></a>
					<div style="clear:both;"></div>
					<div>
						<span>真实姓名</span>
						<p><s:property value="#session.user.URelname"/></p>
					</div> 	
					<div>			
						<span class="name-in">性别</span>
						<p><s:property value="#session.user.USex"/></p>
					</div>			
					<div>			
						<span class="name-in">学校</span>
						<p><s:property value="#session.user.USchool"/></p>
					</div>	
					<div>			
						<span class="name-in">专业</span>
						<p><s:property value="#session.user.UPrefessional"/></p>
					</div>
					<div>			
						<span class="name-in">学历</span>
						<p><s:property value="#session.user.URecord"/></p>
					</div>	
					<div>			
						<span class="name-in">联系方式</span>
						<p><s:property value="#session.user.UPhone"/></p>
					</div>	
					<div>			
						<span class="name-in">邮箱</span>
						<p><s:property value="#session.user.UEmail"/></p>
					</div>	
					<%-- <div>			
						<span class="name-in">出生时间</span>
						<p><s:property value="#session.user.UBirdate"/></p>
					</div>	 --%>
				</form>
		</div>
	</div>
</div>
