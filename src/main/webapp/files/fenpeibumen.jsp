<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	.in{
		height:10px;
		text-align:center;
	}
	
</style>

<link href="${pageContext.request.contextPath }/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
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
    document.getElementById("fom").action="yuangong.htm";
   document.getElementById("fom").submit();
}

</SCRIPT>

<body>
<form id="fom" method="post" action="${pageContext.request.contextPath }/FenpeisuccessServlet?name=${person.name } ">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
	        <tr>
	          <td height="62" background="${pageContext.request.contextPath }/images/nav04.gif">
	            
			   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
			    <tr>
				  <td width="24"><img src="${pageContext.request.contextPath }/images/ico07.gif" width="20" height="18" /></td>
				  <td width="519"><select name="select2">
					    <option>按录入时间</option>
					    <option>按注销时间</option>
				      </select>
				   <input name="textfield" type="text" size="12" readonly="readonly"/><span class="newfont06">至</span>
				   <input name="textfield" type="text" size="12" readonly="readonly"/>	
				   <input name="Submit" type="button" class="right-button02" value="查 询" /></td>
				   <td width="679" align="left"><a href="#" onclick="sousuo()">
				     <input name="Submit" type="button" class="right-button07" value="高级搜索" />
				   </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>	
			    </tr>
	          </table></td>
	        </tr>
	    </table></td></tr>
	  <tr>
	    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
	        <tr>
	          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
	          	 <tr>
	               <td height="20"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
			           <input name="Submit" type="button" class="right-button08" value="删除所选人员信息" /> <input name="Submit" type="button" class="right-button08" value="添加人员信息" onclick="link();" />
			           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		              </td>
	          	</tr>
	              <tr>
	                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
						<tr>
	                    <td height="20" colspan="15" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 分配人员 &nbsp;</td>
	                    </tr>
	                  <tr>
					    <th width="10%" align="center" bgcolor="#EEEEEE">选择</th>
						<th width="30%" height="20" align="center" bgcolor="#EEEEEE">员工姓名</th>
	                    <th width="30%" align="center" bgcolor="#EEEEEE">所属角色</th>
	                    <th width="30%" align="center" bgcolor="#EEEEEE">操作</th>
	                  </tr>
	                  
	                  <tr>
					    <td align="center" bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
						<td align="center" height="20" bgcolor="#FFFFFF" >${person.name }</td>
	                    <td align="center" bgcolor="#FFFFFF">${person.flag }</td>
	                    <td align="center" bgcolor="#FFFFFF">主管  
	                    	<select name="super_id" id="super_id" width="109" height="40" >
	                    		<c:forEach var="staff" items="${list }" varStatus="status">
	                    			<c:if test="${staff.flag == '主管' }">
							        	<option value="${staff.name }">${staff.name }</option>
						        	</c:if>
					      		</c:forEach>
					       </select>
				        </td>
	                  </tr>
	                </table></td>
	              </tr>
	            </table></td>
	        </tr>
	      </table>
	    </td>
	  </tr>
	</table>
	<br /><br />
	<div class="in"><input type="submit"  value="提交" /></div>
</form>
</body>
</html>
