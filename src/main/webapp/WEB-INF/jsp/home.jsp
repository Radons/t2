<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welcome_content.jsp' starting page</title>
       <link rel="stylesheet" href="css/home.css" type="text/css">



  </head>
  
  <body>
	  	<div id="wrap">
			 <jsp:include page="top.jsp"></jsp:include>
			     <div id="content">
						 <div id="showData">
			                 <img src="images/home_content_area.png"/>
			            </div>
			    </div>
	    </div>
  </body>
</html>
