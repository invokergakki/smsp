<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="修改部门"></title>
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
		<form class="form-horizontal m" id="form-dept-edit">
			<input name="deptId" type="hidden"  value="${dept.deptId}"/>
			<input id="treeId" name="parentId"   type="hidden"  value="${dept.parentId}"/>
			<div class="form-group">
				<label class="col-sm-3 control-label ">上级部门：</label>
				<div class="col-sm-8">
				    <div class="input-group">
						<input class="form-control" type="text" id="treeName" onclick="selectDeptTree()" readonly="true"  value="${dept.parentName}">
					    <span class="input-group-addon"><i class="fa fa-search"></i></span>
				    </div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">部门名称：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="deptName"  value="${dept.deptName}" id="deptName" required>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">显示排序：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="orderNum"  value="${dept.orderNum}"  required>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">负责人：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="leader" value="${dept.leader}" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">联系电话：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="phone"  value="${dept.phone}">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">邮箱：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="email" value="${dept.email}">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">部门状态：</label>
				<div class="col-sm-8">
					<div class="radio-box" >
						<c:choose>
							<c:when test="${dept.status=='0'}">
								<label class="radio-box"> <input type="radio"   value="0" name="status" checked/> 正常 </label>
								<label class="radio-box"> <input type="radio"   value="1" name="status" /> 停用 </label>
							</c:when>
							<c:otherwise>
								<label class="radio-box"> <input type="radio"   value="0" name="status" /> 正常 </label>
								<label class="radio-box"> <input type="radio"   value="1" name="status" checked/> 停用 </label>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</form>
	</div>
<%@ include file="../include.jsp"%>
<script src="/goldenetbj/dept/edit.js" ></script>
</body>
</html>
