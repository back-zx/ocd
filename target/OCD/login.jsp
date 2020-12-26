<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/4 0004
  Time: 上午 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/page.css"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/public.js"></script>
</head>
<body>

<!-- 登录body -->
<div class="logDiv">
    <img class="logBanner" src="images/logBanner.gif"/>
    <div class="logGet">
        <!-- 头部提示信息 -->
        <div class="logD logDtip">
            <p class="p1" text-align="center">登录</p>
        </div>
        <!-- 输入框 -->
        <div class="lgD">
            <img class="img1" src="images/logName.png"/>
            <input type="text" placeholder="输入用户名"/>
        </div>
        <div class="lgD">
            <img class="img1" src="images/logPwd.png"/>
            <input type="text" placeholder="输入用户密码"/>
        </div>
        <div class="logC">
            <a href="index.jsp" target="_self">
                <button>登 录</button>
            </a>
        </div>
    </div>
</div>
<!-- 登录body  end -->

<!-- 登录页面底部 -->
<div class="logFoot">
    <p class="p1">Copyright© 2020 版权所有安阳师范学院软件学院</p>
    <p class="p2">123456789</p>
</div>
<!-- 登录页面底部end -->

</body>
</html>