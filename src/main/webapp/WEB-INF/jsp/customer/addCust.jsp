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
    <title>添加新客户</title>
     <link rel="stylesheet" href="css/addCustomer.css" type="text/css">
    <script src="js/regist_page.js" type="text/javascript"></script>
  </head>
  
  <body>
  		<div id="wrap">
			  <jsp:include page="../top.jsp"></jsp:include>
			     <div id="content">
						 <div id="showData">
	 							 <div id="title">
                    <p>添加新客户</p>
                    <hr class="first-hr"  width="90%" align="left">
                </div>
                <form action="cust/save" method="post" onsubmit="return checkSubmit()">
						  <anno id="saveMsg">${saveMsg }</anno>
                    <ul>
                        <li>
                            <label for="username"><span>用户名 <req_sign>*</req_sign></span></label>
                            <input id="username" type="text" name="custName"  onblur="checkUserName()" value="${cust.cuctName }">
                            <anno id="username_anno">4-20位字符，支持字母和数字</anno>

                        </li>

                        <li>
                            <label for="password"><span>密码<req_sign>*</req_sign></span></label>
                            <input type="password" id="password" name="custPwd"  onblur="checkPassword()" value="${cust.custPwd }">
                            <anno id="password_anno">6-20位字符，建议字母和特殊符号组合</anno>

                        </li>

                        <li>
                            <label for="confirm_pas"><span>确认密码&nbsp;<req_sign>*</req_sign></span></label>
                            <input type="password" id="confirm_pas" name="custRepwd"  onblur="checkConfirmPassword()" value="${cust.custPwd}">
                            <anno id="conpass_anno"></anno>

                        </li>
  						<li>
                            <label for="nickname"><span>昵称&nbsp;<req_sign>*</req_sign></span></label>
			                <input type="text" id="nickname" name="custNickName"  onblur="checkNickName()" value="${cust.custNickName}">
			                <anno id="nickname_anno">4-20位字符，支持中文</anno><br/>

                        </li>
 
						<li>
							<label for="e_mail"><span>邮箱&nbsp;<req_sign>*</req_sign></span></label>
			                <input type="text" id="e_mail" name="custEmailString"  onblur="checkEmail()" value="${cust.custEmailString}">
			                <anno id="email_anno">请填写真实邮箱，用于找回密码</anno><br/>
						</li>
						
						<li>
							  <label for="self_intro"><span>自我介绍&nbsp;<req_sign>*</req_sign></span></label>
                			  <textarea rows="3" cols="30" name="custSelfBriefString" id="self_intro"  value="${cust.custSelfBriefString}" onblur="checkSelfIntro()">一句话介绍自己</textarea>
                			 <anno id="si_anno"></anno><br/>
						</li>
						
						<li>
			                <label for="blog"><span>网站博客&nbsp;&nbsp;</span></label>
			                <input type="text" id="blog" name="custBlodAddr" value="http://" onchange="checkBlog()" value="${cust.custBlodAddr}">
			                <anno id="blog_anno">请输入博客地址，如http://woshipm.com</anno><br/>
						</li>
						
						<li>
						 	 <label for="sina_weibo"><span>新浪微博&nbsp;&nbsp;</span></label>
				             <input type="text" id="sina_weibo" name="custWeiboAddr" value="http://" onblur="checkWeibo()"  value="${cust.custWeiboAddr}" >
				             <anno id="weibo_anno">请输入微博地址，如http://weibo.com/526006123</anno><br/>
						</li>
						<li>
			                <label for="authentication"><span>身份认证&nbsp;<req_sign>*</req_sign></span></label>
			                <input type="text" id="authentication" name="custTechTitleString" onblur="checkAuth()"  value="${cust.custTechTitleString}">
			                <anno id="authe_anno">例如腾讯产品经理</anno><br/>
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
