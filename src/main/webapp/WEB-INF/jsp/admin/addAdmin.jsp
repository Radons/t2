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
    <title>My JSP 'addAdmin.jsp' starting page</title>
     <link rel="stylesheet" href="css/regist_page.css" type="text/css">
    <script src="js/regist_page.js" type="text/javascript"></script>
  </head>
  
  <body>
  		<div id="wrap">
			  <jsp:include page="../top.jsp"></jsp:include>
			     <div id="content">
						 <div id="showData">
	 							 <div id="title">
                    <p>添加管理员面</p>
                    <hr class="first-hr"  width="90%" align="left">
                </div>
                <form action="admin/save" method="post" onsubmit="return checkSubmit()">

					 
						  <anno id="saveMsg">${saveMsg }</anno>
					 
                    <ul>
                        <li>
                            <label for="username"><span>用户名 <req_sign>*</req_sign></span></label>
                            <input id="username" type="text" name="username"  onblur="checkUserName()" value="${saveAdmin.adminName }">
                            <anno id="username_anno">4-20位字符，支持字母和数字</anno>

                        </li>

                        <li>
                            <label for="password"><span>密码<req_sign>*</req_sign></span></label>
                            <input type="password" id="password" name="password"  onblur="checkPassword()" value="${saveAdmin.adminPwd }">
                            <anno id="password_anno">7-20位字符，建议字母和特殊符号组合</anno>

                        </li>

                        <li>
                            <label for="confirm_pas"><span>确认密码&nbsp;<req_sign>*</req_sign></span></label>
                            <input type="password" id="confirm_pas" name="confirm_pas"  onblur="checkConfirmPassword()" value="${saveAdmin.adminPwd }">
                            <anno id="conpass_anno"></anno>

                        </li>

                        <li>
                            <label><span>权限&nbsp;&nbsp;</span></label>
                            
                            <c:choose>
                            	<c:when test="${ saveAdmin.adminAuthority ==0}">                            		
	                            	 <select name="authority" >
			                                <option value="0">高级管理员</option>	
			                                <option value="1">普通管理员</option>			                              
	                            	</select>
                            	</c:when>
                            	<c:when test="${ saveAdmin.adminAuthority ==1}">                            		
	                            	 <select name="authority" >
			                                <option value="1">普通管理员</option>	
			                                <option value="0">高级管理员</option>			                              
	                            	</select>
                            	</c:when>
                            	<c:otherwise>
		                            <select name="authority" >
		                                <option value="0">高级管理员</option>
		                                <option value="1">普通管理员</option>
		                            </select>
                            	</c:otherwise>
                            </c:choose>
                            


                        </li>

                        <li>

                            <input id="sub" type="submit" value="提交" >
                        </li>

                    </ul>






                </form>
            
         
			            </div>
			    </div>
	    </div>
	  
     
  </body>
</html>
