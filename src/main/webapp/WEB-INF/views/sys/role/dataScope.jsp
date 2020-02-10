<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="角色数据权限"></title>
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/> 
	<link href="/ajax/libs/jquery-ztree/3.5/css/metro/zTreeStyle.css" rel="stylesheet"/>
</head>
<body class="white-bg">
	<div class="wrapper wrapper-content animated fadeInRight ibox-content">
		<form class="form-horizontal m" id="form-role-edit"object="${role}">
			<input id="roleId" name="roleId" type="hidden" field=""/>
			<div class="form-group">
				<label class="col-sm-3 control-label ">角色名称：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="roleName" id="roleName" field="" readonly="true"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">权限字符：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="roleKey" id="roleKey" field="" readonly="true">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">数据范围：</label>
				<div class="col-sm-8">
					<select id="dataScope" name="dataScope" class="form-control m-b">
						<option value="1" field="">全部数据权限</option>
						<option value="2" field="">自定数据权限</option>
						<option value="3" field="">本部门数据权限</option>
					</select>
					<span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 特殊情况下，设置为“自定数据权限”</span>
				</div>
			</div>
			<div class="form-group" id="authDataScope">
				<label class="col-sm-3 control-label">数据权限</label>
				<div class="col-sm-8">
					<div id="deptTrees" class="ztree"></div>
				</div>
			</div>
		</form>
	</div>
<%@ include file="../include.jsp"%>
<script src="/ajax/libs/jquery-ztree/3.5/js/jquery.ztree.all-3.5.js"></script>
<script src="/goldenetbj/role/dataScopes.js" ></script>
</body>
</html>
