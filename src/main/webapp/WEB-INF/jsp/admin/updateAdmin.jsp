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
    
    <title>修改管理员的信息</title>
       <link rel="stylesheet" href="css/regist_page.css" type="text/css">
    <script src="js/regist_page.js" type="text/javascript"></script>

  </head>
  
  <body>
       <div id="wrap">
			  <jsp:include page="../top.jsp"></jsp:include>
			     <div id="content">
						 <div id="showData">
	 							 <div id="title">
				                    <p>更新管理员页面</p>
				                    <hr class="first-hr"  width="90%" align="left">
                				 </div>
                				 
                				 
                				 <c:choose>
                				 	<c:when test="${!empty noAdmin}">
                				 		 <anno id="noAdminTip"> ${ noAdmin}</anno>
                				 	</c:when>
                				 	
                				 	<c:otherwise>
                				 	 
                				 <form action="admin/update" method="post" onsubmit="return checkSubmit()">

					 
						  <anno id="saveMsg">${updateMsg }</anno>
					 
                    <ul>
                    
                   	 	<li>
                            <label for="username"><span>编号 <req_sign>*</req_sign></span></label>
                            <input id="username" type="text" name="adminId"  readonly="readonly" value="${admin.adminId }">

                        </li>
                        
                        <li>
                            <label for="username"><span>用户名 <req_sign>*</req_sign></span></label>
                            <input id="username" type="text" name="username"  onblur="checkUserName()" value="${admin.adminName }">
                            <anno id="username_anno">4-20位字符，支持字母和数字</anno>

                        </li>

                        <li>
                            <label><span>权限&nbsp;&nbsp;</span></label>
                            
                            <c:choose>
                            	<c:when test="${ admin.adminAuthority ==0}">                            		
	                            	 <select name="authority" >
			                                <option value="0">高级管理员</option>	
			                                <option value="1">普通管理员</option>			                              
	                            	</select>
                            	</c:when>
                            	<c:otherwise  >                            		
	                            	 <select name="authority" >
			                                <option value="1">普通管理员</option>	
			                                <option value="0">高级管理员</option>			                              
	                            	</select>
                            	</c:otherwise>
                            	 
                            </c:choose>
                            


                        </li>

                        <li>

                            <input id="sub" type="submit" value="更新" >
                        </li>

                    </ul>
                </form>
                				 	</c:otherwise>
                				 </c:choose>
                				
                				 
                		</div>
                </div>
       </div>
  </body>
</html>
