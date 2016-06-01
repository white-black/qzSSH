<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<div class="col-md-9">
	<div class="contact-left">
		<div class="account">
			<h3 class="h3">简历</h3>
				<form method="post" action="${pageContext.request.contextPath }/alterResumeMessage.action?id=<s:property value="#session.user.UId"/>">
					<div style="clear:both;"></div>
					<div>			
						<span class="name-in">工作类型</span>
						<input class="my_width" type="text" name="resume.rsType" value='<s:property value="resume.rsType"/>'>
					</div>	
					<%-- <div>			
						<span class="name-in">所求职位</span>
						<input class="my_width" type="text" name="" value='<s:property value=""/>'>
					</div>	 --%>
					<div>			
						<span class="name-in">期望薪资</span>
						<input class="my_width" type="text" name="resume.rsMoney" value='<s:property value="resume.rsMoney"/>'>
					</div>	
					<div>			
						<span class="name-in">自我评价</span>
						<%-- <input class="my_width" type="text" name="user.USex" value="<s:property value="user.USex"/>"> --%>
						<textarea style="height:300px;width:400px;" rows="60" cols="50" name="resume.rsEva" >
							<s:property value="resume.rsEva"/>
						</textarea>
					</div>			
					<div>
						<span><input type="submit" value="提交" style="margin:auto;"></span>
					</div>	
				</form>
		</div>
	</div>
</div>