<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>

<script type="text/javascript">
	$(top.hangge());	
</script>
</head>
<body>
	<!-- 菜单栏 -->
	<div >
		
	</div>

	<table id="table_report" class="table table-striped table-bordered" style="width:99%;margin-top:10px;">
		<thead>
		<tr>
			<th class="center" style="width:50px;"></th>
			<th class='center'>楼盘名称</th>
			<th class='center'>所属省市</th>
			<th class='center'>地址</th>
			<th class='center'>创建时间</th>
		</tr>
		</thead>
		<c:choose>
			<c:when test="${not empty list}">
				<c:forEach items="${list}" var="buildingProject">
				<tr id="${buildingProject.buildingProjectId }">
				<td class="center">${buildingProject.buildingProjectId }</td>
				<td class='center'>${buildingProject.buildingProjectName }</td>
				<td class='center'>${buildingProject.proviceName }${buildingProject.cityName }</td>
				<td class='center'>${buildingProject.address }</td>
				<td class='center'>${buildingProject.createTime }</td>
				</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
				<td colspan="100">没有相关数据</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>