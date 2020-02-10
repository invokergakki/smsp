<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="新增部门"></title>
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
</head>
<body class="white-bg">
	<div class="wrapper wrapper-content animated fadeInRight ibox-content">
		<form class="form-horizontal m" id="form-dept-add">
			<input id="treeId" name="parentId" type="hidden" value="${dept.deptId}"/>
			<div class="form-group">
				<label class="col-sm-3 control-label ">上级部门：</label>
				<div class="col-sm-8">
				    <div class="input-group">
						<input class="form-control" type="text" onclick="selectDeptTree()" id="treeName" name="parentName" value="${dept.deptName}">
					    <span class="input-group-addon"><i class="fa fa-search"></i></span>
				    </div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">部门名称：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="deptName" id="deptName" required>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">显示排序：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="orderNum" required>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">负责人：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="leader">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">联系电话：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="phone">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">邮箱：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="email">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">部门状态：</label>
				<div class="col-sm-8">
					<label class="radio-box"> <input type="radio"   value="0" name="status"/>  正常 </label>
					<label class="radio-box"> <input type="radio"   value="1" name="status" /> 停用 </label>
				</div>
			</div>
		</form>
	</div>
<%@ include file="../include.jsp"%>
<script src="/goldenetbj/dept/add.js" ></script>
</body>
</html>
