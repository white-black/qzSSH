<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<div class="col-md-9">
	<div class="contact-left">
		<div class="account">
			<h3 class="h3">职位</h3>
				<form>
					<a id="modify" class="modify" href="${pageContext.request.contextPath }/company.action?a_key=21">编辑<label class="glyphicon glyphicon-pencil"></label></a>
					<div style="clear:both;"></div>
					<div>
						<span>职位名称</span>
						<p><s:property value="recruit.rcName"/></p>
					</div> 	
					<%-- <div>			
						<span class="name-in">职位类别</span>
						<p></p>
					</div> --%>			
					<div>			
						<span class="name-in">学历</span>
						<p><s:property value="recruit.rcRecord"/></p>
					</div>	
					<div>			
						<span class="name-in">工资</span>
						<p><s:property value="recruit.rcMoney"/></p>
					</div>
					<div>			
						<span class="name-in">经验</span>
						<p><s:property value="recruit.rcExp"/></p>
					</div>	
					<div>			
						<span class="name-in">人数</span>
						<p><s:property value="recruit.rcCount"/></p>
					</div>	
					<div>			
						<span class="name-in">发布时间</span>
						<p><s:property value="recruit.rcStarttime"/></p>
					</div>	
					<div>			
						<span class="name-in">截止时间</span>
						<p></p>
					</div>	
					<div>			
						<span class="name-in">职位描述</span>
						<p><s:property value="recruit.rcDec"/></p>
					</div>	
					<div>			
						<span class="name-in">任职要求</span>
						<p><s:property value="recruit.rcNeed"/></p>
					</div>	
				</form>
		</div>
	</div>
</div>