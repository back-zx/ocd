<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />


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
  <form action="" method="post" enctype="multipart/form-data" name="fom" id="fom" target="sypost" >
	<div class="MainDiv">
	<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
	  <tr>
      	<th class="tablestyle_title" >输入反馈信息</th>
	  </tr>
	  <tr>
	    <td class="CPanel">
			<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
			<tr>
				<td width="100%">
					<fieldset style="height:100%;">
						<legend>添加任务</legend>
						<table border="0" cellpadding="2" cellspacing="1" style="width:100%">
						  <tr>
						    <td nowrap align="right" width="13%"><span class="red"> *</span>计划名称:</td>
						    <td width="41%"><input name="text" class="text" placeholder="编码" style="width:250px" type="text" size="40" /></td>
						    </tr>
						  <tr>
						    <td nowrap align="right"><span class="red"> *</span>开始时间:</td>
						    <td><input name="" id="" class="text" style="width:154px" /></td>
						    <td align="right"><span class="red"> *</span>结束时间:</td>
						    <td><input name="Input" id="Input" class="text" style="width:154px" /></td></td>
						  </tr>
						  
						  <tr>
						    <td nowrap align="right" height="120px"><span class="red"> *</span>计划描述:</td>
						    <td colspan="3"><textarea id="textarea" name="textarea" rows="5" cols="80">根据需求分析进行编码</textarea></td>
						  </tr>
						  <tr>
						    <td nowrap align="right"><span class="red"> *</span>任务状态：</td>
						    <td>
								<select name="select1">
										<option selected="selected">==请选择==</option>
										<option>待实施</option>
										<option>实施中</option>
										<option>已完成</option>
								</select>
							</td>
						  </tr>
						  <tr>
						    <td nowrap align="right"><span class="red"> *</span>是否反馈：</td>
						    <td>
								<select name="select2">
										<option selected="selected">==请选择==</option>
										<option>未反馈</option>
										<option>已反馈</option>
								</select>
							</td>
						  </tr>
						  <tr>
						    <td nowrap align="right" height="120px"><span class="red"> *</span>反馈信息</td>
						    <td colspan="3"><textarea id="textarea" name="textarea" rows="5" cols="80">编码已经顺利完成，可以开始测试</textarea></td>
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
			<input type="button" name="Submit" value="提交" class="button" onclick="link();"/>　<!--  提交后上个页面的实施状态会由未实施更改为实施中-->
			<!--  <input type="reset" value="重置"/>-->
			<input type="reset" name="Submit2" value="重置"  class="button"/>
		</td>
	</tr>
	</table>
	</div>
	</form>
</body>
</html>
