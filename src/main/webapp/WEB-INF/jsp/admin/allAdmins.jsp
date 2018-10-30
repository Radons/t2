<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>所有管理员信息</title>
    <link rel="stylesheet" href="css/allAdmins.css" type="text/css">
 <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/allAdmin.js"></script>
  </head>
  
  <body>
   <div id="wrap">
			  <jsp:include page="../top.jsp"></jsp:include>
			     <div id="content">
						 <div id="showData">
	 							 <div id="title">
				                    <p>所有管理员页面</p>
				                    <hr class="first-hr"  width="90%" align="left">
                				</div>
                				
                				
                			<span id="deleteMsg">${deleteMsg }</span>
               				<c:choose>
               					<c:when test="${!empty noAdmins}">
               						<span>${noAdmins }</span>
               					</c:when>
               					<c:otherwise>
               						<table   >
               							<tr>
               								<th>编号</th>
               								<th>用户名</th>	
               								<th>操作</th>               								
               							</tr>
               							
               							<c:forEach var ="user" items="${userList}">
               								<tr>
               									<td>${user.userId }</td>
               									<td>${user.userName }</td>
               									
               									
               									<td><a href="admin/queryAdminById?id=${user.userId }">编辑</a><a href="javascript:confirmDelete(${user.userId })">删除</a></td>
               									 
               								</tr>
               							</c:forEach>
               							
               						 
               							
               						</table>
               						
               						<div id="show-page">
	               						<span>共有&nbsp; ${page.totalPageCount }&nbsp;页&nbsp;&nbsp;&nbsp;</span>
	               						<a href="admin/allAdminsByPage?p=1">首页</a>&nbsp;&nbsp;&nbsp;
	               						<c:if test="${page.currentPageCode!=1}">
	               							<a href="admin/allAdminsByPage?p=${ page.currentPageCode-1}">上一页</a>&nbsp;&nbsp;&nbsp; 
	               						</c:if>              						 
	               						<span>当前是第&nbsp;&nbsp;${page.currentPageCode }&nbsp;&nbsp;页&nbsp;&nbsp;&nbsp; </span>
	               						 
	               						<c:if test="${page.currentPageCode <page.totalPageCount}">
	               							<a href="admin/allAdminsByPage?p=${page.currentPageCode+1}">下一页</a>
	               						</c:if>
	               						
	               						<a href="admin/allAdminsByPage?p=${page.totalPageCount }">尾页</a>
               						</div>
               					</c:otherwise>
               				</c:choose>
               
         
			            </div>
			    </div>
	    </div>
	  
  </body>
</html>
