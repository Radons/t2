<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>管理员操作</title>
    <link rel="stylesheet" href="css/template__home_honrizontalmenu.css" type="text/css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/home-horizontalmenu.js">

    </script>
</head>
<body>
<div id="wrap">
    <div id="main_menu">
        <ul id="topNav">
            <li ><a href="">人员管理</a>
                <span >
                     <a href="">查看所有管理员</a>
                     <a href="">编辑管理员</a>
                     <a href="">删除管理员</a>
                     <a href="">添加管理员</a>
                </span>
            </li>
            <li><a href="">人员权限管理</a>
                <span>
                     <a href="">角色管理</a>
                     <a href="">权限分配</a>
                     <a href="">权限回收</a>

                </span>
            </li>
            <li><a href="">个人信息管理</a>
                <span>
                    <a href="">修改个人信息</a>
                     <a href="">查看个人信息</a>
                </span>
            </li>
            <li><a href="">客户信息管理</a>
                <span>
                     <a href="">公司类型管理</a>
                    <a href="">客户公司信息管理</a>
                     <a href="">客户管理</a>
                    <a href="">客户广告管理</a>
                    <a href="">客户活动管理</a>

                </span>
            </li>
            <li><a href="">应用类别管理</a>
                <span>
                     <a href="">应用父类别</a>
                     <a href="">应用子类别</a>

                </span>
            </li>
            <li><a href="">应用管理</a>
                <span>
                     <a href="">应用上传</a>
                     <a href="">应用更新</a>
                     <a href="">应用禁用</a>
                     <a href="">应用删除</a>
                </span>
            </li>
            <li><a href="">数据统计</a>
                <span>
                     <a href="">App操作日志</a>
                    <a href="">按设备统计App信息</a>
                     <a href="">按设备统计App情况</a>
                     <a href="">客户信息统计</a>
                </span>
            </li>
            <li><a href="">系统管理</a>
                <span>
                     <a href="">数据备份</a>
                     <a href="">数据还原</a>
                </span>
            </li>

        </ul>

    </div>

    <div id="logonRole">
       当前账户：
    </div>


    <div id="detailMenu">
        <ul >

        </ul>

    </div>

    <div id="content">


    </div>

</div>

</body>
</html>