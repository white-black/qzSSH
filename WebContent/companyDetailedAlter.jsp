<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<div class="col-md-9">
	<div class="contact-left">
		<div class="account">
			<h3 class="h3">修改信息</h3>
				<form method="post" action="${pageContext.request.contextPath }/alterCompanyDetailed.action">
					<div>
						<span>公司名称</span>
						<input name="company.CComname" class="my_width" type="text" value="<s:property value="#session.company.CComname"/>">
					</div> 	
					<div>			
						<span class="name-in">所在地</span>
						<input class="my_width" type="text" name="company.CLocation" value="<s:property value="#session.company.CLocation"/>">
					</div>			
					<div>			
						<span class="name-in">联系人</span>
						<input class="my_width" type="text" name="company.CRelname" value="<s:property value="#session.company.CRelname"/>">
					</div>	
					<div>			
						<span class="name-in">联系方式</span>
						<input class="my_width" type="text" name="company.CRelphone" value="<s:property value="#session.company.CRelphone"/>">
					</div>
					<span><input type="submit" value="提交" name="btn_val" style="margin:auto;"></span>
				</form>
		</div>
	</div>
</div>