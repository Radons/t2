/**
 * Created by Qianghj on 2015/12/15.
 */
$(document).ready(function(){
	 var hasUsername  ;
     var hasUserpwd  ;
	function checkusername(){
		 hasUsername = false;
         var username =   $("#txtUsername").val();
        if(username ==null || username =="" || username.length==0 ){
            $("#usernameTip").text("请输入用户名");
        }else{
            $("#usernameTip").text("");
            hasUsername =true;
        }
        return hasUsername;
	}

	function checkPwd(){
		hasUserpwd = false;
        var password =   $("#txtPassword").val();

        if(password ==null || password =="" || password.length==0 ){
            $("#passwordTip").text("请输入密码");
        }else{
            $("#passwordTip").text("");
            hasUserpwd=true;
        }
        return hasUserpwd;
	}
   
    $("#txtUsername").blur(function(){
        checkusername();
    });

    $("#txtPassword").blur(function(){        
		checkPwd();
    });

    $("#logonForm").submit(function () {
    	 if(!checkusername()){
    		  $("#usernameTip").text("请输入用户名");
    		  return false;
    	 }else{
    		 $("#usernameTip").text("");
    	 }
    	 if(!checkPwd()){
    		   $("#passwordTip").text("请输入密码");
    		   return false;
    	 }else{
    		  $("#passwordTip").text("");
    	 }
    	     	 
    	 return true; 
    	 
    	 
    });







});