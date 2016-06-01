<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
		<div class="account">
			<h3 class="h3">就业指导</h3>
				<s:form action="saveNews.action" method="post" theme="simple">
					<div>
						<span>标题</span>
						<input name="news.neTitle" class="my_width" type="text"> 				
					</div>
					<div>
						<span class="word-in">内容</span>
						<textarea name="news.neContent" rows="" cols="100" style="height:400px;"></textarea>
						<!-- <input name="password" class="my_width" type="password">  -->
					</div>
						<span><input type="submit" value="发布" name="btn_val" style="margin:auto;"></span> 
						<table class="table">
					   <thead>
					      <tr>
					         <th>标题</th>
					         <th>发布时间</th>
					         <th>操作</th>
					      </tr>
					   </thead>
					   <tbody>
					   	<s:iterator value="newes" status="st">
					      <tr>
					         <td><s:property value="neTitle"/></td>
					         <td><s:property value="neDate"/></td>
					          <td>
	                                <a class="link-del" href="${pageContext.request.contextPath }/delNews.action?id=<s:property value="neId"/>" onclick="del()">删除</a>
	                                &nbsp;&nbsp;
	                            </td>
					      </tr>
					     </s:iterator>
					   </tbody>
					</table>
				</s:form>
		</div>