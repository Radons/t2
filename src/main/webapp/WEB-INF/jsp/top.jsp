<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta charset="UTF-8">
    <title>管理员操作</title>
    <link rel="stylesheet" href="css/home.css" type="text/css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/home.js">
    </script>
</head>
<body>
<!--<div id="wrap">
    --><div id="main_menu">
        <ul id="topNav">
        	<li ><a href="home">首页</a> </li>
            <li ><a href="">人员管理</a>
                <span >
                     <a href="admin/allAdminsByPage"  >查看所有管理员</a>
                     <a href="admin/queryAdminById.jsp?f=edit">编辑管理员</a>
                     <a href="admin/queryAdminById.jsp?f=delte">删除管理员</a>
                     <a href="/WEB-INF/jsp/admin/addAdmin.jsp">添加管理员</a>
                </span>
            </li>
            <!--<li><a href="">人员权限管理</a>
                <span>
                     <a href="#"  >角色管理</a>
                     <a href="#">权限分配</a>
                     <a href="#">权限回收</a>

                </span>
            </li>
            --><li><a href="">个人信息管理</a>
                <span>
                     <a href="#"  >修改个人信息</a>
                     <a href="#">查看个人信息</a>
                </span>
            </li>
            <li><a href="">客户信息管理</a>
                <span>
                     <a href="customer/addCust.jsp">添加客户信息</a>
                     <a href="cust/queryall">查看客户信息</a>
                     <a href="customer/queryCustomerById.jsp?f=edit">编辑客户信息</a>
                     <a href="customer/queryCustomerById.jsp?f=delte">删除客户</a>
                </span>
            </li>
            <!--
            <li><a href="">应用类别管理</a>
                <span>
                     <a href="#">应用父类别</a>
                     <a href="#">应用子类别</a>

                </span>
            </li>
            <li><a href="">应用管理</a>
                <span>
                     <a href="#">应用上传</a>
                     <a href="#">应用更新</a>
                     <a href="#">应用禁用</a>
                     <a href="#">应用删除</a>
                </span>
            </li>
            <li><a href="">数据统计</a>
                <span>
                     <a href="#">App操作日志</a>
                     <a href="#">按设备统计App信息</a>
                     <a href="#">按设备统计App情况</a>
                     <a href="#">客户信息统计</a>
                </span>
            </li>
            <li><a href="">系统管理</a>
                <span>
                     <a href="#">数据备份</a>
                     <a href="#">数据还原</a>
                </span>
            </li>

        --></ul>

    </div>

    <div id="logonRole">
        当前账户：<span>        
        		${pageContext.request.remoteUser}
        		${pageContext.request.authType}
        		<c:if test="${logonAuthority ==0}">
        			(高级管理员)
        		</c:if>
        		<c:if test="${logonAuthority ==1}">
        			(普通管理员)
        		</c:if>
        
        	</span>
      <!--   	<a href="servlet/AdminLogoutServlet" id="logout">退出</a> -->
    </div>
<form action="/logout" method="post">
			<input type="submit" class="button red big" value="Sign Out" /> <input
				type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>

    <div id="detailMenu">
		  
        <ul >
			<li>
				<p> 
					代理商增加后台配置操作方法:进入代理平台网站后台,系统设置,服务器初始化设置。
				    同时三级泛域名可在产品管理的服务器列表里找到相应的服务器参数。
			    
			    </p>
			</li>  
        </ul>
    </div> 

    <!--<div id="content">
			 <div id="showData">
                 <img src="images/home_content_area.png"/>
            </div>
    </div>
--> 
 

</body>

</html>
