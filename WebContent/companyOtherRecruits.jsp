<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="col-md-3 single-bottom">
	<div class="store-right">
		<h6>全部职位</h6>
		<s:iterator value="recruits" status="st">
			<div class="product">
				<a href="redirectRecruit.action?id=<s:property value="rcId"/>" class="elit"><s:property value="rcName"/></a>
				<span class="price price-in">￥&nbsp;<s:property value="rcMoney"/></span>
			</div>
		</s:iterator>
	</div>	
</div>