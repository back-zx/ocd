<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目管理系统 by www.mycodes.net</title>
<link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/css/style.css" type="text/css" media="all" />

<style type="text/css">
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}

-->
.red {
	color: red;
}
</style>
</head>

<body class="ContentBody">
	<form action="${pageContext.request.contextPath }/AddrenwuServlet" method="post" id="fom" target="sypost">
		<div class="MainDiv">
			<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
				<tr>
					<th class="tablestyle_title">任务添加页面</th>
				</tr>
				<tr>
					<td class="CPanel">
						<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
							<tr>
								<td width="100%">
									<fieldset style="height: 100%;">
										<legend>添加任务</legend>
										<table border="0" cellpadding="2" cellspacing="1" style="width: 100%">
											<tr>
												<td nowrap align="right" width="13%"><span class="red"> *</span>任务标题:</td>
												<td width="41%"><input type="text" name="task_name" id="task_name" class="text" placeholder="请输入任务标题" size="40" /></td>
											</tr>
											<tr>
												<td nowrap align="right" ><span class="red"> *</span>开始时间:</td>
												<td><input name="task_begin_time" id="task_begin_time" placeholder="请输入开始时间" class="text" style="width: 154px" /></td>
												<td align="right"><span class="red"> *</span>结束时间:</td>
												<td><input name="task_end_time" id="task_end_time" placeholder="请输入结束时间" class="text" style="width: 154px" /></td>
											</tr>
											<tr>
												<td nowrap align="right"><span class="red"> *</span>任务执行人:</td>
												<td>
													<select name="staff_id">
															<option selected="selected">==请选择==</option>
															<c:forEach var="staff" items="${list }" varStatus="status">
																<option value="${staff.username}">${staff.name}</option>
															</c:forEach>
													</select>
												</td>
											</tr>
											<tr>
												<td nowrap align="right" height="120px"><span class="red"> *</span>任务说明:</td>
												<td colspan="3"><textarea id="task_description" name="task_description" placeholder="请输入任务说明" rows="5" cols="80"></textarea></td>
											</tr>
											<tr>
												<td nowrap align="right"><span class="red"> *</span>任务状态：</td>
												<td>
													<select name="task_state">
															<option selected="selected">==请选择==</option>
															<option value="未反馈">未反馈</option>
															<option value="已反馈">已反馈</option>
													</select>
												</td>
											</tr>
											<tr>
												<td nowrap align="right"><span class="red"> *</span>主管:</td>
												<td>
													<select name="emp_id">
															<option selected="selected">==请选择==</option>
															<c:forEach var="emp" items="${list1 }" varStatus="status">
																<option value="${emp.username}">${emp.name}</option>
															</c:forEach>
													</select>
												</td>
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
						<input type="submit" name="submit" value="提交" class="button" />
						<input type="reset" name="Submit2" value="重置" class="button" />
					</td>
						 
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
