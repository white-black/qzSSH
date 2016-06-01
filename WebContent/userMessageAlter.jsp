<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<div class="col-md-9">
	<div class="contact-left">
		<div class="account">
			<h3 class="h3">个人信息</h3>
				<form method="post" action="${pageContext.request.contextPath }/alterUserMessage.action">
					<div style="clear:both;"></div>
					<div>
						<span>真实姓名</span>
						<input class="my_width" type="text" name="user.URelname" value="<s:property value="#session.user.URelname"/>">
					</div> 	
					<div>			
						<span class="name-in">性别</span>
						<input class="my_width" type="text" name="user.USex" value="<s:property value="#session.user.USex"/>">
					</div>			
					<div>			
						<span class="name-in">学校</span>
						<input class="my_width" type="text" name="user.USchool" value="<s:property value="#session.user.USchool"/>">
					</div>	
					<div>			
						<span class="name-in">专业</span>
						<input class="my_width" type="text" name="user.UPrefessional" value="<s:property value="#session.user.UPrefessional"/>">
					</div>
					<div>			
						<span class="name-in">学历</span>
						<input class="my_width" type="text" name="user.URecord" value="<s:property value="#session.user.URecord"/>">
					</div>	
					<div>			
						<span class="name-in">联系方式</span>
						<input class="my_width" type="text" name="user.UPhone" value="<s:property value="#session.user.UPhone"/>">
					</div>	
					<div>			
						<span class="name-in">邮箱</span>
						<input class="my_width" type="text" name="user.UEmail" value="<s:property value="#session.user.UEmail"/>">
					</div>	
					<%-- <div>			
						<span class="name-in">出生时间</span>
						<input class="my_width" type="text" name="user.UBirdate" value="<s:property value="#session.user.UBirdate"/>">
					</div> --%>
					<div>
						<span><input type="submit" value="提交" name="btn_val" style="margin:auto;"></span>
					</div>	
				</form>
		</div>
	</div>
</div>