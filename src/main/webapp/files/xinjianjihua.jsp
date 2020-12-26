<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />


<script language="JavaScript" type="text/javascript">
function tishi()
{
  var a=confirm('数据库中保存有该人员基本信息，您可以修改或保留该信息。');
  if(a!=true)return false;
  window.open("冲突页.htm","","depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}

function check()
{
document.getElementById("aa").style.display="";
}


function link(){
alert('保存成功！');
    document.getElementById("fom").action="xuqiumingxi.htm";
   document.getElementById("fom").submit();
}



</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
.red{
	color:red;
}
</style>
</head>

<body class="ContentBody">
  <form action="${pageContext.request.contextPath }/AddjihuaServlet" method="post"  target="sypost" >
	<div class="MainDiv">
	<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
	  <tr>
      	<th class="tablestyle_title" >计划添加页面</th>
	  </tr>
	  <tr>
	    <td class="CPanel">
			<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
			<tr>
				<td width="100%">
					<fieldset style="height:100%;">
						<legend>添加计划</legend>
						<table border="0" cellpadding="2" cellspacing="1" style="width:100%">
						  <tr>
						    <td nowrap align="right" width="13%"><span class="red"> *</span>计划名称:</td>
						    <td width="41%"><input name="plan_name" class="text" style="width:250px" type="text" size="40" /></td>
						    </tr>
						  <tr>
						    <td nowrap align="right"><span class="red"> *</span>开始时间:</td>
						    <td><input name="plan_begin_date" id="plan_begin_date" class="text" style="width:154px" /></td>
						    <td align="right"><span class="red"> *</span>结束时间:</td>
						    <td><input name="plan_end_date" id="plan_end_date" class="text" style="width:154px" /></td>
						  </tr>
						  <tr>
						    <td nowrap align="right" height="120px"><span class="red"> *</span>计划描述:</td>
						    <td colspan="3"><input name="plan_description" style="width:200px;height:100px;" /></td>
						  </tr>
						  <tr>
							<td nowrap align="right"><span class="red"> *</span>所属任务:</td>
							<td>
								<select name="task_id">
								<option selected="selected">==请选择==</option>
								<c:forEach var="emp" items="${list }" varStatus="status">
								<option value="${emp.id}">${emp.task_name}</option>
								</c:forEach>
								</select>
							</td>
						</tr>
						  <tr>
						    <td nowrap align="right"><span class="red"> *</span>任务状态：</td>
						    <td ><input type="hidden" name="plan_state" value="未实施"/><span class="red">未实施</span></td>
						  </tr>
						  <tr>
						    <td nowrap align="right"><span class="red"> *</span>是否反馈：</td>
						    <td ><input type="hidden" name="feedback" value="未反馈" /><span class="red">未反馈</span></td>
						  </tr>
						  
						  </table>
				 		  <br />
					</fieldset>
				</td>
			</tr>
			</table>
	 	</td>
  	</tr>
	<tr>
		<td colspan="2" align="center" height="50px">
			<input type="submit" name="Submit" value="提交" class="button" />　
			<input type="reset" name="Submit2" value="重置"  class="button"/>
		</td>
	</tr>
	</table>
	</div>
	</form>
</body>
</html>
