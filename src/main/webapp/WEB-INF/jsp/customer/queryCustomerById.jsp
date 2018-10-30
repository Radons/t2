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
    
    <title>查询客户</title>
       <link rel="stylesheet" href="css/regist_page.css" type="text/css">
    <script src="js/regist_page.js" type="text/javascript"></script>
<script>
	function submitQuery(){
		//获得文本框中的管理员编号
		var cusId =document.getElementById("cusId").value;
		var operate =document.getElementById("operate").value;
	//	alert("cusId=" +cusId );
		
		//执行servlet的查询
		location.href="/cus/cust/queryById?id="+cusId+"&operate="+operate;
	}
	
		
	
</script>
  </head>
  
  <body>
       <div id="wrap">
			  <jsp:include page="../top.jsp"></jsp:include>
		
	 							 <div id="content">
	 							 <div id="showData">
	 							 <div id="title">
				                    <p>根据编号查询客户</p>
				                    <hr class="first-hr"  width="90%" align="left">
                				 </div>
                				 
                				 <%
                				 	String operate = request.getParameter("f");
                				 	
                				 	request.setAttribute("operate",operate);
                				  
                				 
                				  %>
                		<form  action="javascript:submitQuery()"  method="post"  >
										<input type="hidden" id="operate" value="${operate}"/>
				                    <ul>
				                    	
				                   	 	<li>
				                            <label for="username"><span>编号 <req_sign>*</req_sign></span></label>
				                            <input id="cusId" type="text" name="cusId" >
				                        </li>
				
				                        <li>
				                            <input id="sub" type="submit" value="查询" >
				                        </li>
				
				                    </ul>
               		 </form>
                				 
                		</div>
                </div>
       </div>
  </body>
</html>
