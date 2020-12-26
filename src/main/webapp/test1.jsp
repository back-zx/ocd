<%--
  Created by IntelliJ IDEA.
  User: 枫桥夜泊
  Date: 2019/12/21
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h3>查重结果如下：</h3>
<form action="" method="post" >
    文本一：${txt1}
    <br>
    文本二：${txt2}
    <br>
    海明距离：${l3}
    <br>
    文本相似度：${l4}%
    <br>
    <h4>注：海明距离越小，说明文本相似度越高</h4>
</form>
</body>
</html>
