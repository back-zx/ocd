<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目管理系统</title>
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
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="xiangmu.htm";
   document.getElementById("fom").submit();
}

</SCRIPT>

<body>
<form name="fom" id="fom" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="62" background="../images/nav04.gif">
          
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="679" align="left"><a href="#" onclick="sousuo()"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></td>	
		  </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
	         
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

				  <tr>
                    <td height="20" colspan="9" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 任务细列表 </td>
                  </tr>
                  <tr>
				    <td width="15%" height="20" align="right" bgcolor="#FFFFFF">任务名称:</td>
                    <td width="85%" align="left" bgcolor="#FFFFFF">${task.task_name }</td>
                  </tr>
                  <tr>
				    <td height="20" align="right" bgcolor="#FFFFFF">实施人:</td>
                    <td bgcolor="#FFFFFF">${task.staff_id }</td>
                  </tr>
				  <tr>
				    <td align="right" bgcolor="#FFFFFF">开始日期:</td>
                    <td bgcolor="#FFFFFF">${task.task_begin_time }</td>
                  </tr>
                  <tr>
				    <td align="right" bgcolor="#FFFFFF">完成日期:</td>
                    <td bgcolor="#FFFFFF">${task.task_end_time }</td>
                  </tr>
				  <tr>
				    <td align="right" bgcolor="#FFFFFF">任务状态:</td>
                    <td bgcolor="#FFFFFF">
	                    <select name="renwu" id="renwu" width="109" height="40" >
				        	<option value="admin">实施中</option>
				        	<option value="manager">待实施</option>
				        	<option value="employer">已完成</option>
				        </select>
			        </td>
                  </tr>
				  <tr>
				    <td align="right" bgcolor="#FFFFFF" height="80">任务描述:</td>
                    <td bgcolor="#FFFFFF">&nbsp;${task.task_name }</td>
                  </tr>
                  <tr>
                  	<td bgcolor="#FFFFFF" align="right">操作</td>
                  	<td bgcolor="#FFFFFF" align="left"><input name="Submit2" type="button"  id="sub" class="right-button01" value="提交" /></td>
                  </tr>
                         
                  <tr>
                    <td height="20" colspan="9" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 计划实施 </td>
                  </tr>
                  <tr>
				    <td align="right" bgcolor="#FFFFFF">计划名称:</td>
                    <td bgcolor="#FFFFFF">${task.task_name }</td>
                  </tr>
                  <tr>
				    <td align="right" bgcolor="#FFFFFF">完成状态:</td>
                    <td bgcolor="#FFFFFF">${task_description }</td>
                  </tr>
                  <tr>
				    <td align="right" bgcolor="#FFFFFF">是否反馈:</td>
                    <td bgcolor="#FFFFFF">${task_state }</td>
                  </tr>
                  <tr>
				    <td align="right" bgcolor="#FFFFFF">开始时间:</td>
                    <td bgcolor="#FFFFFF">${task.task_begin_time }</td>
                  </tr>
                  <tr>
				    <td align="right" bgcolor="#FFFFFF">结束时间:</td>
                    <td bgcolor="#FFFFFF">${task.task_end_time }</td>
                  </tr>
                  <tr>
				    <td align="right" bgcolor="#FFFFFF">操作:</td>
                    <td bgcolor="#FFFFFF"><a href="${pageContext.request.contextPath }/FindjihuaServlet?id=${task.id }">详细信息</a></td>
                  </tr>
                  
                  
                  
                </table></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">共 <span class="right-text09">5</span> 页 | 第 <span class="right-text09">1</span> 页</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
