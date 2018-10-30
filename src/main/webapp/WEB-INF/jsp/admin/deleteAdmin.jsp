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
    
    <title>删除管理员</title>
       <link rel="stylesheet" href="css/regist_page.css" type="text/css">
    <script src="js/regist_page.js" type="text/javascript"></script>




  </head>
  
  <body>
       <div id="wrap">
			  <jsp:include page="../top.jsp"></jsp:include>
			     <div id="content">
						 <div id="showData">
	 							 <div id="title">
				                    <p>删除管理员</p>
				                    <hr class="first-hr"  width="90%" align="left">
                				 </div>
                				 
                				 
                				 <c:choose>
								 	<c:when test="${!empty deleteMsg}">
								 		${deleteMsg}
								 	</c:when>
								 </c:choose>
								 
							       <c:choose>
								 	<c:when test="${!empty noAdmin}">
								 		 <anno id="noAdminTip"> ${ noAdmin}</anno>
								 	</c:when>
								 	
								 	<c:otherwise>
								 	
					<form action="admin/delete" method="post" onsubmit="return checkSubmit()">

					 
						 
					 
                    <ul>
                    
                   	 	<li>
                            <label for="username"><span>编号 <req_sign>*</req_sign></span></label>
                            <input id="id" type="text" name="id"  readonly="readonly" value="${admin.adminId }">

                        </li>
                        
                        <li>
                            <label for="username"><span>用户名 <req_sign>*</req_sign></span></label>
                            <input id="username" type="text" name="username"  readonly="readonly" value="${admin.adminName }">

                        </li>

                        <li>
                            <label><span>权限&nbsp;&nbsp;</span></label>
                            
                            <c:choose>
                            	<c:when test="${ admin.adminAuthority ==0}">                            		
	                            	 <select name="authority" >
			                                <option value="0">高级管理员</option>	
	                            	</select>
                            	</c:when>
                            	<c:otherwise  >                            		
	                            	 <select name="authority" >
			                                <option value="1">普通管理员</option>	
	                            	</select>
                            	</c:otherwise>
                            	 
                            </c:choose>
                            


                        </li>

                        <li>

                            <input id="sub" type="submit" value="删除" >
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
