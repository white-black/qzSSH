<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<div class="col-md-9">
	<div class="contact-left">
		<div class="account">
			<h3 class="h3">简历</h3>
				<form >
					<div>
					<a class="modify" href="user.action?a_key=31&id=<s:property value="#session.user.UId"/>">编辑<label class="glyphicon glyphicon-pencil"></label></a>
					</div>
					<div style="clear:both;"></div>
					<div>
						<span>工作类型</span>
						<p><s:property value="resume.rsType"/></p>
					</div> 	
					<%-- <div>			
						<span class="name-in">所求职位</span>
						<p><s:property value="resume.rsEva"/></p>
					</div>	 --%>		
					<div>			
						<span class="name-in">期望薪资</span>
						<p><s:property value="resume.rsMoney"/></p>
					</div>	
					<div>			
						<span class="name-in">自我评价</span>
						<p><s:property value="resume.rsEva"/></p>
					</div>
				</form>
		</div>
	</div>
</div>
