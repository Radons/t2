/**
 * Created by Administrator on 2015/10/13.
 */
/**
 * 当验证不正确时，注释字体变红
 * @param annotation 注释id
 */
function annoTurnRed(annotation){
    var anno=document.getElementById(annotation);
    anno.style.color='red';
}
/**
 * 当验证正确时，注释字体变成正常灰色
 * @param annotation 注释id
 */
function annoTurnComm(annotation){
    var anno=document.getElementById(annotation);
    anno.style.color='gray';
}

/**
 * 验证用户名是否输入正确
 * @returns {boolean} 返回验证是否成功
 */
function checkUserName(){
    var sign=false;
    var userName=document.getElementById("username");
    var unValue=userName.value;
    if(unValue.length>=4 && unValue.length<=20 && unValue.match(/^[A-Za-z0-9]+$/)){    //长度在4~20，还要满足字母数字限制
        annoTurnComm("username_anno");          //验证正确，字体变正常
        sign=true;
    }
    else {
        annoTurnRed("username_anno");       //字体长度小于4或大于20时，验证错误，字体变红
    }
    return sign;
}
/**
 * 验证密码是否输入正确
 * @returns {boolean} 返回验证是否成功
 */
function checkPassword(){
    var sign=false;
    var pwd=document.getElementById("password");
    var pwdValue=pwd.value;
    if(pwdValue.length>=6&&pwdValue.length<=20){    //长度在7~20
        annoTurnComm("password_anno");
        sign=true;
    }
    else{
        annoTurnRed("password_anno");
    }
    return sign;
}
/**
 * 验证确认密码
 * @returns {boolean} 返回验证是否成功
 */
function checkConfirmPassword(){
    var sign=false;
    var pwd=document.getElementById("password");
    var cfmpwd=document.getElementById("confirm_pas");
    var pwdValue=pwd.value;
    var cfmPwdValue=cfmpwd.value;
    var anno=document.getElementById("conpass_anno");
    if(cfmPwdValue!=pwdValue){              //确认密码要与输入密码一致
        anno.innerText="两次密码输入不一致！";
        anno.style.color='red';
    }
    else{
        anno.innerText=null;
        anno.style.color='gray';
        sign=true;
    }
    return sign;
}
/**
 * 验证昵称
 * @returns {boolean} 返回验证是否成功
 */
function checkNickName(){
    var sign=false;
    var nickName=document.getElementById("nickname");
    var nnValue=nickName.value;
    if(nnValue.length>=4 && nnValue.length<=20&&nnValue.match(/^(\w+)|([\u0391-\uFFE5]+)$/)){
        annoTurnComm("nickname_anno");
        sign=true;
    }
    else{
        annoTurnRed("nickname_anno");//字体长度小于4或大于20时，验证错误
    }
    return sign;
}

/**
 * 验证邮箱是否正确
 * @returns {boolean}返回验证是否成功
 */
function checkEmail(){
    var  sign=false;
    var email=document.getElementById("e_mail");
    var emailValue=email.value;
    if(emailValue.match(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/) && emailValue!=''){ //符合字符限制且不为空
        annoTurnComm("email_anno");
        sign=true;
    }else
        annoTurnRed("email_anno");
    return sign;
}
/**
 * 验证自我介绍是否正确
 * @returns {boolean}返回验证是否成功
 */
function checkSelfIntro(){
    var sign=false;
    var selfIntro=document.getElementById("self_intro");
    var selfIntroValue=selfIntro.value;
    var anno=document.getElementById("si_anno");
    if(selfIntroValue.replace(/\s/g,'').length!=0){ //如果取出空格符长度不等于0，则说明有值，否则警告
        anno.innerText=null;
        anno.style.color='gray';
        sign=true;
    }else{
        anno.innerText="请自我介绍！";
        anno.style.color='red';
    }
    return sign;
}
/************************入职日期*****************************************************************/
/*初始化年份的下拉列表*/
function init_entra_year(){
    var currentDate=new Date().getDate();
    var entraYear=document.getElementById("entra_year");//根据id获得年份select
    var currentYear=new Date().getYear()+1900;          //获得当前年份，要加1900
    entraYear.options.length=currentYear-1990+1+1;      //设置年份select的长度，要加上原有的一个提示option
    for(var i=0;i<entraYear.options.length-1;i++){
        entraYear.options[i+1].text=1990+i;             //循环存入年份option的text中
    }
}
/*初始化月份下拉列表*/
function init_entra_month(){

    var entraMonth=document.getElementById("entra_mon");//根据id获得月份
    var entraYear=document.getElementById("entra_year");
    var selectedYear=parseInt(entraYear[entraYear.selectedIndex].text);
    var currentYear=new Date().getYear()+1900;          //获得当前年份，要加1900
    var currentMonth=new Date().getMonth();          //获得当前月份，1月份是0，此后递增
    if(selectedYear==currentYear){                      //如果选择的年份和当前年份相同
        entraMonth.options.length=currentMonth+2;    //月份的长度就是当前月数+2，除了月份从0开始外，还有一个提示option
        for(var i=0;i<entraMonth.options.length;i++)       //循环存入月份
            entraMonth.options[i+1].text=i+1;
    }else{
        entraMonth.options.length=12+1;                     //长度除了12个月，还有一个提示option
        for(var i=0;i<12;i++)                               //循环存入月份
            entraMonth.options[i+1].text=i+1;
    }
}

/*初始化日期下拉列表*/
function init_entra_date(){
    var entraYear=document.getElementById("entra_year");    //获取被选择年份的index
    var isLeapYear;                                         //布尔型变量用于存放是否是闰年的值
    var selectedYear=parseInt(entraYear[entraYear.selectedIndex].text);
    if((selectedYear%4==0 && selectedYear%100!=0)||selectedYear%400==0)//
        isLeapYear=true;             //+1整除4后余数为0的是闰年
    else
        isLeapYear=false;         //否则平年

    getDate(isLeapYear);                    //isLeapYear作为参数用来判断根据何种方法来获得日期
}
/**
 * 根据月份获得日期
 * @param isLeap 是否闰年
 */
function getDate(isLeap){
    var ferDays;                //数值型变量，用于存放二月天数
    var entraMonth=document.getElementById("entra_mon");    //获得月份select
    if(isLeap)              //如果是闰年
        ferDays=29;         //二月天数29天
    else
        ferDays=28;         //否则28天
    switch (entraMonth.selectedIndex){  //分类判断调用hasDay()
        case 1:case 3:case 5:case 7:case 8:case 10:case 12:hasDay(31);break;//这些月份有31天
        case 4:case 6:case 9:case 11:hasDay(30);break;                      //这些月份30天
        case 2:hasDay(ferDays);break;                                       //2月份ferDays天，取决平闰年
    }
}
/**
 * 通过月份的天数来设置日期select的长度并赋值
 * @param day_num 该月天数
 */
function hasDay(day_num) {
    var entraDate=document.getElementById("entra_date");    //获得日期select
    var entraMonth=document.getElementById("entra_mon");//根据id获得月份
    var entraYear=document.getElementById("entra_year");
    var currentYear=new Date().getYear()+1900;          //获得当前年份，要加1900
    var currentMonth=new Date().getMonth();          //获得当前月份，1月份是0，此后递增
    var currentDate=new Date().getDate();
    var selectedYear=parseInt(entraYear[entraYear.selectedIndex].text);
    var selectedMonth=parseInt(entraMonth[entraMonth.selectedIndex].text);
    if(selectedYear==currentYear&&selectedMonth==currentMonth+1) {      //若年份和月份都是当前月份
        entraDate.options.length = currentDate + 1;                     //则日期为当前日期天数，为天数加上原有的提示option
        for (var i = 1; i < entraDate.options.length; i++)
            entraDate.options[i].text = i;                    //存入各个日期
    }else{
        entraDate.options.length=day_num+1;                     //设置长度，为天数加上原有的提示option
        for(var i=0;i<day_num;i++)
            entraDate.options[i+1].text=i+1;                    //存入各个日期
    }
}
/**
 * 验证日期是否正确
 * @returns {boolean}返回验证是否成功
 */
function checkHireDate(){
    var sign=false;
    var entraYear=document.getElementById("entra_year");
    var entraMonth=document.getElementById("entra_mon");//根据id获得月份
    var entraDate=document.getElementById("entra_date");    //获得日期select
    var hireDateAnno=document.getElementById("HireDate_anno");
    if(entraYear.selectedIndex==0||entraMonth.selectedIndex==0||entraDate.selectedIndex==0){
        hireDateAnno.innerText="请完整填写日期";//如果三个select之中有一个选了第一个option，就报错
        hireDateAnno.style.color="red";
    }else{
        hireDateAnno.innerText=null;
        hireDateAnno.style.color="gray";
        sign=true;
    }
    return sign;
}

/*******************************************************************************/

/**
 * 验证博客字符是否符合条件
 * @returns {boolean} 返回验证是否成功
 */
function checkBlog(){
    var sign=false;
    var blog=document.getElementById("blog");
    var blogValue=blog.value;
    if(blogValue.match(/^http:\/\/([\w-]+\.)+[\w-]+(\/[\w-.\/?%&=]*)?$/)&&blogValue!=''){     //符合字符限制且不为空
        annoTurnComm("blog_anno");
        sign=true;
    }else
        annoTurnRed("blog_anno");
    return sign;
}
/**
 * 验证微博字符是否符合条件
 * @returns {boolean} 返回验证是否成功
 */
function checkWeibo(){
    var sign=false;
    var sinaWeibo=document.getElementById("sina_weibo");
    var sinaWeiboValue=sinaWeibo.value;
    if(sinaWeiboValue.match(/^http:\/\/([\w-]+\.)+[\w-]+(\/[\w-.\/?%&=]*)?$/)&&sinaWeiboValue!=''){       //符合字符限制且不为空
        annoTurnComm("weibo_anno");
        sign=true;
    }else
        annoTurnRed("weibo_anno");
    return sign;
}
/**
 * 验证身份认证是否正确
 * @returns {boolean} 返回验证是否成功
 */
function checkAuth(){
    var sign=false;
    var authe=document.getElementById("authentication");
    var autheValue=authe.value;
    if(autheValue.replace(/\s/g,'').length!=0&&autheValue.replace.match(/^(\w+)|([\u0391-\uFFE5]+)$/)){ //必填，取出空格字符串长度不为0
        annoTurnComm("authe_anno");
        sign=true;
    }else
        annoTurnRed("authe_anno");
    return sign;
}
/*****************************验证码**********************************************/
/**
 * 生成验证码
 */
function generateCaptcha(){
    /*A-Z,a-z,0-9*/
    var codeSrcArray=new Array();   //所有元素存放的数组，有字母和数字
    for(var i=0;i<62;i++){
        if(i<26){
            codeSrcArray[i]=String.fromCharCode(65+i);  //大写字母
        }else if(i<52){
            codeSrcArray[i]=String.fromCharCode(97-26+i);   //小写字母
        }else{
            codeSrcArray[i]=(i-52);}        //数字
    }
    var code='';
    for(var i=0;i<4;i++){   //四位验证码
        var index=Math.floor(Math.random()*codeSrcArray.length) //从数组中随机取出字符
        code+=codeSrcArray[index];      //组成四位字符串
    }
    var capLabel=document.getElementById("show_cap");
    capLabel.innerText=code;            //显示到label中
}
/**
 * 验证验证码输入是否正确
 * @returns {boolean} 返回验证是否成功
 */
function checkCode(){
    var sign=false;
    var oriCode=document.getElementById("show_cap").innerText;  //验证码显示的值
    var inputVal=document.getElementById("captcha").value;      //输入的值
    if(inputVal.toLowerCase().trim()!=oriCode.toLowerCase()){   //取出首尾空格并转换为小写
        document.getElementById("captcha_anno").innerText="验证码错误，请重新输入";
        annoTurnRed("captcha_anno");
    }else{
        document.getElementById("captcha_anno").innerText=null;
        annoTurnComm("captcha_anno");
        sign=true;
        
    }
    return sign;
}
/**
 * 验证提交按钮
 * @returns {boolean}返回验证是否成功
 */
function checkSubmit(){
  if(checkUserName()&&checkPassword()&&checkConfirmPassword()&&checkNickName()&&checkEmail()&&checkSelfIntro()&&
        checkHireDate()&&checkBlog()&&checkWeibo()&&checkAuth()&&checkCode())//之前所有的验证都要成功
    return true;        //提交验证才成功
  else
    return false;
}