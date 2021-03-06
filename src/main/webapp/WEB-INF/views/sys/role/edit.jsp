<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="修改角色"></title>
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
		<form class="form-horizontal m" id="form-role-edit" object="${role}">
			<input id="roleId" name="roleId" type="hidden"   value="${role.roleId}" />
			<div class="form-group">
				<label class="col-sm-3 control-label ">角色名称：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="roleName" id="roleName" value="${role.roleName}" required>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">显示顺序：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="roleSort" id="roleSort" value="${role.roleSort}"  required>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">状态：</label>
				<div class="col-sm-8">
					<label class="toggle-switch switch-solid">
						<c:choose>
							<c:when test="${role.status=='0'}">
								<input type="checkbox" id="status" checked="ture"/>
							</c:when>
							<c:otherwise>
								<input type="checkbox" id="status" />
							</c:otherwise>
						</c:choose>
                        <span></span>
                    </label>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">备注：</label>
				<div class="col-sm-8">
					<input id="remark" name="remark" class="form-control" type="text" value="${role.remark}" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">菜单权限：</label>
				<div class="col-sm-8">
					<div id="menuTrees" class="ztree"></div>
				</div>
			</div>
		</form>
	</div>
<%@ include file="../include.jsp"%>
<script src="/ajax/libs/jquery-ztree/3.5/js/jquery.ztree.all-3.5.js"></script>
<script src="/goldenetbj/role/edit.js" ></script>
</body>
</html>
