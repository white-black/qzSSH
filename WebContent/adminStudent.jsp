<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="account">
			<h3 class="h3">学生管理</h3>
				<form>
					<div style="clear:both;"></div>
					<table class="table">
					   <thead>
					      <tr>
					         <th>学生姓名</th>
					         <th>联系方式</th>
					         <th>注册时间</th>
					         <th>操作</th>
					      </tr>
					   </thead>
					   <tbody>
					   	<s:iterator value="users" status="st">
					      <tr>
					         <td><s:property value="UName"/></td>
					         <td><s:property value="UPhone"/></td>
					         <td><s:property value="UDate"/></td>
					          <td>
	                                <a class="link-del" href="${pageContext.request.contextPath }/delUser.action?id=<s:property value="UId"/>" onclick="del()">删除</a>
	                                &nbsp;&nbsp;
	                            </td>
					      </tr>
					     </s:iterator>
					   </tbody>
					</table>
				</form>
		</div>