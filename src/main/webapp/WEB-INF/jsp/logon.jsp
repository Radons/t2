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
    <title>会员登录</title>
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/logon.js"></script>
</head>
<body>
<div id="login" class="bor">
			
	
    <h1>会员登录</h1>
	   
    <div class="theme">
			 <c:if test="${!empty errorLogonMsg}">
					<label>
						${ errorLogonMsg}
					</label>
					<c:remove var="errorLogonMsg"></c:remove>
			</c:if>
        <form id="logonForm" name='form1' method='POST' action="/login">
        	
            <ul>
                <li> <span>用户名：</span>
                    <input id="txtUsername" class="intxt login_from" type="text" name="userName"/>
                     <span id="usernameTip"> </span>
                </li>
                <li> <span>密&nbsp;&nbsp;&nbsp;码：</span>
                    <input id="txtPassword" class="intxt login_from2" type="password" name="userPwd"/>
                    <span id="passwordTip"> </span>
                </li>
                <li>
                    <span>&nbsp;</span><button id="btnSignCheck" class="login-btn" type="submit">登&nbsp;录</button>
                    
                </li>
            </ul>
        </form>
    </div>
    <br class="clear"/>
</div>
<div class="footer">Copyright &copy; 2009-2015 FENGYUNTEC.EDU <a href="#">XXXX</a> 版权所有
</div>

</body>
</html>