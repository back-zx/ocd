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
<h3>请输入文本，点击“提交”查重</h3>
<form action="${pageContext.request.contextPath }/ocd/test.do" method="post" >
    <textarea name="txt1" rows="10" cols="50"></textarea>
    <textarea name="txt2" rows="10" cols="50"></textarea>
    <br>
    <button>提交</button>
</form>
</body>
</html>
