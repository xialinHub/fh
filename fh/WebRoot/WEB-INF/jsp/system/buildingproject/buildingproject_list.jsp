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
<div class="container-fluid" id="main-container">
	<div id="page-content" class="clearfix">
		<div class="row-fluid">
			<div class="row-fluid">
				<!-- 检索  -->
				<form action="buildingproject/buildingprojectlist.do" method="post" name="bpForm" id="bpForm">
					<table>
						<tr>
							<td>
								<span class="input-icon">
									<input autocomplete="off" id="nav-search-input" type="text" name="bpName" value="${pd.pdName }" placeholder="这里输入关键词" />
									<i id="nav-search-icon" class="icon-search"></i>
								</span>
							</td>
							<td style="vertical-align:top;"><button class="btn btn-mini btn-light" onclick="search();" title="检索"><i id="nav-search-icon" class="icon-search"></i></button></td>
						</tr>
					</table>
					<table id="table_report" class="table table-striped table-bordered table-hover">
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
					
					<div class="page-header position-relative">
						<table style="width:100%;">
							<tr>
								<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
							</tr>
						</table>
					</div>
				</form>
			</div>
  		</div>	
	</div>
</div>	
<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse">
	<i class="icon-double-angle-up icon-only"></i>
</a>
<!-- 引入 -->
<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/ace-elements.min.js"></script>
<script src="static/js/ace.min.js"></script>
<script type="text/javascript">
	$(top.hangge());
	//检索
	function search(){
		top.jzts();
		$("#pdForm").submit();
	}
</script>
</body>