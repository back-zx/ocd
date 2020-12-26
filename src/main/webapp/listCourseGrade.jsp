<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>在线查重系统</title>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .tabfont01 {
            font-family: "宋体";
            font-size: 9px;
            color: #555555;
            text-decoration: none;
            text-align: center;
        }

        .font051 {
            font-family: "宋体";
            font-size: 12px;
            color: #333333;
            text-decoration: none;
            line-height: 20px;
        }

        .font201 {
            font-family: "宋体";
            font-size: 12px;
            color: #FF0000;
            text-decoration: none;
        }

        .button {
            font-family: "宋体";
            font-size: 14px;
            height: 37px;
        }

        html {
            overflow-x: auto;
            overflow-y: auto;
            border: 0;
        }

        -->
    </style>

    <link href="${pageContext.request.contextPath }/css/css.css"
          rel="stylesheet" type="text/css"/>
    <script type="text/JavaScript">

    </script>
    <link href="${pageContext.request.contextPath }/css/style.css"
          rel="stylesheet" type="text/css"/>
</head>
<SCRIPT language=JavaScript>
    function sousuo() {
        window.open(
            "gaojisousuo.htm",
            "",
            "depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
    }

    function selectAll() {
        var obj = document.fom.elements;
        for (var i = 0; i < obj.length; i++) {
            if (obj[i].name == "delid") {
                obj[i].checked = true;
            }
        }
    }

    function upload() {
        alert("上传成功！")
    }

    function unselectAll() {
        var obj = document.fom.elements;
        for (var i = 0; i < obj.length; i++) {
            if (obj[i].name == "delid") {
                if (obj[i].checked == true)
                    obj[i].checked = false;
                else
                    obj[i].checked = true;
            }
        }
    }

    function link() {
        document.getElementById("fom").action = "addrenwu.htm";
        document.getElementById("fom").submit();
    }
</SCRIPT>

<body>
<form name="fom" id="fom" method="post" action="">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>
            <td height="30">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="62"
                            background="${pageContext.request.contextPath }/images/nav04.gif">
                            <h2 align="center">课程成绩统计</h2>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="subtree1" style="DISPLAY: " width="100%"
                       border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            <table width="95%" border="0" align="center"
                                   cellpadding="0" cellspacing="0">
                                <tr>
                                    <td height="40" class="font42">
                                        <table width="100%" border="0" cellpadding="4"
                                               cellspacing="1" bgcolor="#464646" class="newfont03">
                                            <tr class="CTitle">
                                                <td height="22" colspan="6" align="center"
                                                    style="font-size: 16px">课程成绩详细列表
                                                </td>
                                            </tr>
                                            <tr bgcolor="#EEEEEE">
                                                <th width="20%" align="center">学号</th>
                                                <th width="20%" align="center">姓名</th>
                                                <th width="15%" align="center">课程名称</th>
                                                <th width="15%" align="center">平时成绩</th>
                                                <th width="15%" align="center">期末成绩</th>
                                                <th width="15%" align="center">总成绩</th>
                                            </tr>
                                            <c:forEach var="cg" items="${courseGrades }" varStatus="status">
                                                <tr>
                                                    <td align="center" height="20" bgcolor="#FFFFFF">${cg.sno } </td>
                                                    <td align="center" height="20" bgcolor="#FFFFFF">${cg.sname }</td>
                                                    <td align="center" height="20" bgcolor="#FFFFFF">${cg.cname }</td>
                                                    <td align="center" height="20" bgcolor="#FFFFFF">${cg.pgrade }</td>
                                                    <td align="center" height="20" bgcolor="#FFFFFF">${cg.mgrade }</td>
                                                    <td align="center" height="20" bgcolor="#FFFFFF">${cg.zgrade }</td>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
