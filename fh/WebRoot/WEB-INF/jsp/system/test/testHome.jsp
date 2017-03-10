<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	String strXML = "";
	strXML += "<graph caption='对比表' xAxisName='月份' yAxisName='值' decimalPrecision='0' formatNumberScale='0'>";
	strXML += "<set name='1' value='462' color='AFD8F8'/>";
	strXML += "<set name='2' value='857' color='F6BD0F'/>";
	strXML += "<set name='3' value='671' color='8BBA00'/>";
	strXML += "<set name='4' value='494' color='FF8E46'/>";
	strXML += "<set name='5' value='761' color='008E8E'/>";
	strXML += "<set name='6' value='960' color='D64646'/>";
	strXML += "<set name='7' value='629' color='8E468E'/>";
	strXML += "<set name='8' value='622' color='588526'/>";
	strXML += "<set name='9' value='376' color='B3AA00'/>";
	strXML += "<set name='10' value='494' color='008ED6'/>";
	strXML += "<set name='11' value='761' color='9D080D'/>";
	strXML += "<set name='12' value='960' color='A186BE'/>";
	strXML += "</graph>";
%>


<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">	
	<!-- jsp文件头和头部 -->
	<%@ include file="../admin/top.jsp"%>
	<link rel="stylesheet" href="plugins/zTree/3.5/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="static/js/jquery-1.5.1.min.js"></script>
	<script type="text/javascript" src="plugins/zTree/3.5/jquery.ztree.core-3.5.js"></script> 
	<script type="text/javascript">
		$(top.hangge());
	</script>  
</head>
<body>
	<!-- 树状图 -->
	<div class="container-fluid" id="main-container" style="width:34%;height:100%;float: left;margin-top:20px;">
		<table style="width:100%;margin-bottom: 10px;" border="0">
			<tr>
				<td style="width:100%;" valign="top" bgcolor="#FFFFFF">
					<a class="btn btn-mini btn-info" onclick="addElement();"><i class="icon-edit"></i>添加节点</a>
					<a class="btn btn-mini btn-purple" onclick="editElement();"><i class="icon-pencil"></i>修改节点</a>
					<a class="btn btn-mini btn-danger" onclick="delElement();"><i class='icon-trash'></i>删除节点</a>
				</td>
			</tr>
		</table>
		<table style="width:100%;" border="0">
			<tr>
				<td style="width:100%;" valign="top" bgcolor="#F9F9F9">
					<div style="width:100%;">
						<ul id="leftTree" class="ztree"></ul>
					</div>
				</td>
			</tr>
		</table>
	</div>
		
	<!-- 统计报表 -->
	<div style="width:65%;height:100%;float: right;margin-top: 20px;">
		<div style="float:right;">
			<table border="0" width="50%">
				<tr>
				<td><jsp:include page="../../FusionChartsHTMLRenderer.jsp" flush="true">
					<jsp:param name="chartSWF" value="static/FusionCharts/Column2D.swf" />
					<jsp:param name="strURL" value="" />
					<jsp:param name="strXML" value="<%=strXML%>" />
					<jsp:param name="chartId" value="myNext" />
					<jsp:param name="chartWidth" value="500" />
					<jsp:param name="chartHeight" value="300" />
					<jsp:param name="debugMode" value="false" />
				</jsp:include></td>
				</tr>
			</table>
		</div>
		<div style="float:right;">
			<table border="0" width="50%">
				<tr>
					<td><jsp:include page="../../FusionChartsHTMLRenderer.jsp" flush="true">
							<jsp:param name="chartSWF" value="static/FusionCharts/Line.swf" />
							<jsp:param name="strURL" value="" />
							<jsp:param name="strXML" value="<%=strXML%>" />
							<jsp:param name="chartId" value="myNext" />
							<jsp:param name="chartWidth" value="500" />
							<jsp:param name="chartHeight" value="300" />
							<jsp:param name="debugMode" value="false" />
						</jsp:include></td>
				</tr>
			</table>
		</div>
	</div>
</body>
<SCRIPT type="text/javascript">
	var setting = {
		view: {
			showIcon: showIconForTree
		},
		data: {
			simpleData: {
				enable: true
			}
		}
	};
	
	var zNodes =[
		{ id:1, pId:0, name:"父节点1 - 展开", open:true},
		{ id:11, pId:1, name:"父节点11 - 折叠"},
		{ id:111, pId:11, name:"叶子节点111", url:"http://www.so.com/", target:"treeFrame"},
		{ id:112, pId:11, name:"叶子节点112", url:"", target:"treeFrame"},
		{ id:113, pId:11, name:"叶子节点113"},
		{ id:114, pId:11, name:"叶子节点114"},
		{ id:115, pId:114, name:"叶子节点114"},
		{ id:116, pId:115, name:"叶子节点114"},
		{ id:117, pId:116, name:"叶子节点114"},
		{ id:12, pId:1, name:"父节点12 - 折叠",url:"http://www.so.com/", target:"treeFrame"},
		{ id:121, pId:12, name:"叶子节点121"},
		{ id:122, pId:12, name:"叶子节点122"},
		{ id:123, pId:12, name:"叶子节点123"},
		{ id:124, pId:12, name:"叶子节点124"},
		{ id:13, pId:1, name:"父节点13 - 没有子节点", isParent:true},
		{ id:2, pId:0, name:"父节点2 - 折叠"},
		{ id:21, pId:2, name:"父节点21 - 展开", open:true},
		{ id:211, pId:21, name:"叶子节点211"},
		{ id:212, pId:21, name:"叶子节点212"},
		{ id:213, pId:21, name:"叶子节点213"},
		{ id:214, pId:21, name:"叶子节点214"},
		{ id:22, pId:2, name:"父节点22 - 折叠"},
		{ id:221, pId:22, name:"叶子节点221"},
		{ id:222, pId:22, name:"叶子节点222"},
		{ id:223, pId:22, name:"叶子节点223"},
		{ id:224, pId:22, name:"叶子节点224"},
		{ id:23, pId:2, name:"父节点23 - 折叠"},
		{ id:231, pId:23, name:"叶子节点231"},
		{ id:232, pId:23, name:"叶子节点232"},
		{ id:233, pId:23, name:"叶子节点233"},
		{ id:234, pId:23, name:"叶子节点234"},
		{ id:235, pId:23, name:"叶子节点232"},
		{ id:236, pId:23, name:"叶子节点233"},
		{ id:237, pId:23, name:"叶子节点234"},
		{ id:238, pId:23, name:"叶子节点232"},
		{ id:239, pId:23, name:"叶子节点233"},
		{ id:2310, pId:23, name:"叶子节点234"},
		{ id:2311, pId:23, name:"叶子节点232"},
		{ id:2312, pId:23, name:"叶子节点233"},
		{ id:2312, pId:23, name:"叶子节点234"},
		{ id:2314, pId:23, name:"叶子节点232"},
		{ id:2315, pId:23, name:"叶子节点233"},
		{ id:2316, pId:23, name:"叶子节点234"},
		{ id:3, pId:0, name:"父节点3 - 没有子节点"}
	];
	
	function showIconForTree(treeId, treeNode) {
		return !treeNode.isParent;
	};
	
	$(document).ready(function(){
		$.fn.zTree.init($("#leftTree"), setting, zNodes);
	});
	
	function treeFrameT(){
		var hmainT = document.getElementById("treeFrame");
		var bheightT = document.documentElement.clientHeight;
		hmainT.style.width = '100%';
		hmainT.style.height = (bheightT-7) + 'px';
	}
	treeFrameT();
	window.onresize=function(){  
		treeFrameT();
	};
	function addElement(){
		top.hangge();
	}
	function editElement(){
		alert("修改节点方法");
	}
	function delElement(){
		alert("删除节点方法");
	}
</SCRIPT>
</html>