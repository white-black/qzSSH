<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<div class="col-md-9">
	<div class="contact-left">
		<div class="account">
			<h3 class="h3">职位</h3>
				<form method="post" action="saveRecruit.action?id=<s:property value="recruit.rcId"/>">
					<div>
						<span>职位名称</span>
						<input class="my_width" type="text" name="recruit.rcName" value="<s:property value="recruit.rcName"/>">
					</div> 	
					<%-- <div>			
						<span class="name-in">职位类别</span>
						<input class="my_width" type="text" name="recruit.tbBoard" value="<s:property value="recruit.rcName"/>">
					</div> --%>			
					<div>			
						<span class="name-in">学历</span>
						<input class="my_width" type="text" name="recruit.rcRecord" value="<s:property value="recruit.rcRecord"/>">
					</div>	
					<div>			
						<span class="name-in">工资</span>
						<input class="my_width" type="text" name="recruit.rcMoney" value="<s:property value="recruit.rcMoney"/>">
					</div>
					<div>			
						<span class="name-in">经验</span>
						<input class="my_width" type="text" name="recruit.rcExp" value="<s:property value="recruit.rcExp"/>">
					</div>	
					<div>			
						<span class="name-in">人数</span>
						<input class="my_width" type="text" name="recruit.rcCount" value="<s:property value="recruit.rcCount"/>">
					</div>	
					<div>			
						<span class="name-in">职位描述</span>
						<input class="my_width" type="text" name="recruit.rcDec" value="<s:property value="recruit.rcDec"/>">
					</div>	
					<div>			
						<span class="name-in">任职要求</span>
						<input class="my_width" type="text" name="recruit.rcNeed" value="<s:property value="recruit.rcNeed"/>">
					</div>
					<div>
						<span><input type="submit" value="提交" style="margin:auto;"></span>
					</div>	
				</form>
		</div>
	</div>
</div>