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
    
    <title>所有客户信息</title>
    <link rel="stylesheet" href="css/allAdmins.css" type="text/css">
 <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/allCust.js"></script>
  </head>
  
  <body>
   <div id="wrap">
			  <jsp:include page="../top.jsp"></jsp:include>
			     <div id="content">
						 <div id="showData">
	 							 <div id="title">
				                    <p>所有客户信息</p>
				                    <hr class="first-hr"  width="90%" align="left">
                				</div>
                				
                				
                			<span id="deleteMsg">${deleteMsg }</span>
               				<c:choose>
               					<c:when test="${!empty noCusts}">
               						<span>${noCusts }</span>
               					</c:when>
               					<c:otherwise>
               						<table   >
               							<tr>
               								<th>编号</th>
               								<th>客户姓名</th>
               								<th>客户昵称</th>
               								<th>客户邮箱</th>
               								<th>客户网站</th>
               								<th>客户职位</th>
               								<th>操作</th>               								
               							</tr>
               							
               							<c:forEach var ="cust" items="${listCust}">
               								<tr>
               									<td>${cust.custId }</td>
               									<td>${cust.cuctName }</td>
               									<td>${cust.custNickName }</td>
               									<td>${cust.custEmailString}</td>
               									<td>${cust.custBlodAddr }</td>
               									<td>${cust.custTechTitleString}</td>
               									<td><a href="cust/queryById?id=${cust.custId }">编辑</a><a href="javascript:confirmDelete(${cust.custId })">删除</a></td>
               									 
               								</tr>
               							</c:forEach>
               							
               						</table>
               					 
               					</c:otherwise>
               				</c:choose>
               
         
			            </div>
			    </div>
	    </div>
	  
  </body>
</html>
