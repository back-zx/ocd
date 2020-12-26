<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>在线查重系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../images/left.gif);
}
-->
</style>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，admin<span class="left-font02">${sessionScope.person.name }!</span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="../login.jsp" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		
	  <!--  1.学生信息管理开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="${pageContext.request.contextPath }/ocd/findStudent.do" target="mainFrame" class="left-font03">学生信息管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	
	  <!--  1.学生信息管理结束    -->
	 
	 <!--  2.课程信息开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%">
                      <a href="${pageContext.request.contextPath }/ocd/findCourse.do" target="mainFrame" class="left-font03" onClick="tupian('8');">课程信息</a>
                  </td>
                </tr>
            </table></td>
          </tr>
      </table>
	  <!--  2.课程信息结束    -->
	  
	  <!--  3.课程成绩开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="${pageContext.request.contextPath }/ocd/findCourseGrade.do" target="mainFrame" class="left-font03">课程成绩</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	
	  <!--  3.课程成绩结束    -->
	  
	  
	  <!--  4.班级信息开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="${pageContext.request.contextPath }/ocd/findClasses.do" target="mainFrame" class="left-font03">班级信息</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	
	  <!--  4.班级信息结束    -->
	  
	  <!--  5.个人学习信息统计开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="${pageContext.request.contextPath }/ocd/findPersonGrade.do" target="mainFrame" class="left-font03">个人学习信息统计</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  <!--  5.个人学习信息统计结束    -->
	  
	  <!--  6.班级学习信息统计开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="../images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="${pageContext.request.contextPath }/ocd/findClassGrade.do" target="mainFrame" class="left-font03">班级学习信息统计</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	
	  <!--  6.班级学习信息统计结束    -->

        <!--  7.文本查重开始    -->
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
            <tr>
                <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="8%" height="12"><img name="img3" id="img3" src="../images/ico04.gif" width="8" height="11" /></td>
                        <td width="92%"><a href="${pageContext.request.contextPath }/ocd/check.do" target="mainFrame" class="left-font03">文本查重</a></td>
                    </tr>
                </table></td>
            </tr>
        </table>

        <!--  文本查重结束    -->
	  </TD>
  </tr>
  
</table>
</body>
</html>
