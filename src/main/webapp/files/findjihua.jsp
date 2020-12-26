<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <td height="62" style="background:url(../images/nav04.gif)">          
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="679" align="left">查询计划<a href="#" onclick="sousuo()"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></td>	
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
                <td height="40" class="font42">
                <table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				  <tr>
                    <td height="20" colspan="9" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 查询条件 </td>
                  </tr>
                  <tr>
				    <td  height="20" width="15%" align="right" bgcolor="#FFFFFF">计划名称:</td>
                    <td bgcolor="#FFFFFF" width="85%">需求分析</td>
                  </tr>
                  <tr>
				    <td align="right" bgcolor="#FFFFFF" height="80">所属任务:</td>
                    <td bgcolor="#FFFFFF" >
						<select name="select2">
							<option selected="selected">==请选择==</option>
							<option>开发一个学籍管理系统</option>
							<option>开发一个学籍管理系统</option>
							<option>开发一个学籍管理系统</option>
						</select>
					</td>
                  </tr>
                  
				  <tr>
				    <td align="right" bgcolor="#FFFFFF">是否反馈:</td>
                    <td bgcolor="#FFFFFF">
						<select name="select2">
							<option selected="selected">==请选择==</option>
							<option>未反馈</option>
							<option>已反馈</option>
						</select>
					</td>
                  </tr>
				 <tr>
				    <td align="right" bgcolor="#FFFFFF">操作:</td>
                    <td bgcolor="#FFFFFF"><input name="Submit23222" type="submit" value="查询计划" /></td>	
                  </tr>
                  
                  <tr>
                    <td height="20" colspan="9" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 计划信息 </td>
                  </tr>
                  <tr>
                  	<th width="20%" align="center" bgcolor="#EEEEEE">计划名称</th>
					<th width="20%" align="center" height="20" bgcolor="#EEEEEE">所属任务</th>
					<th width="20%" align="center" bgcolor="#EEEEEE">开始时间</th>
					<th width="20%" align="center" bgcolor="#EEEEEE">结束时间</th>
					<th width="10%" align="center" bgcolor="#EEEEEE">计划状态</th>
	                <th width="10%" align="center" bgcolor="#EEEEEE">是否反馈</th>
	                
                  </tr>
                 <tr>
            		<td bgcolor="#FFFFFF" align="center" >需求分析</td>
	                <td bgcolor="#FFFFFF" align="center" >开发一个学籍管理系统</td>
					<td bgcolor="#FFFFFF" align="center" >2017-02-03</td>
					<td bgcolor="#FFFFFF" align="center" >2017-02-30</td>
					<td bgcolor="#FFFFFF" align="center" >已完成</td>
          		  	<td bgcolor="#FFFFFF" align="center" >未反馈</td>
          		 </tr>
                 <tr>
            		<td bgcolor="#FFFFFF" align="center"  >编码</td>
	                <td bgcolor="#FFFFFF" align="center" >开发一个学籍管理系统</td>
					<td bgcolor="#FFFFFF" align="center" >2017-02-03</td>
					<td bgcolor="#FFFFFF" align="center" >2017-02-30</td>
					<td bgcolor="#FFFFFF" align="center" >已完成</td>
          		  	<td bgcolor="#FFFFFF" align="center" >未反馈</td>
          		 </tr>
                 <tr>
            		<td bgcolor="#FFFFFF" align="center" >测试</td>
	                <td bgcolor="#FFFFFF" align="center" >开发一个学籍管理系统</td>
					<td bgcolor="#FFFFFF" align="center" >2017-02-03</td>
					<td bgcolor="#FFFFFF" align="center" >2017-02-30</td>
					<td bgcolor="#FFFFFF" align="center" >已完成</td>
          		  	<td bgcolor="#FFFFFF" align="center" >未反馈</td>
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
