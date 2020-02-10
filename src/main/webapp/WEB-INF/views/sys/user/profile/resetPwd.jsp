<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="修改用户密码"></title>
	<link rel="shortcut icon" href="favicon.ico">
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
		<form class="form-horizontal m" id="form-user-resetPwd">
			<input name="userId"  type="hidden"  value="${user.userId}" />
			<div class="form-group">
				<label class="col-sm-3 control-label ">登录名称：</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" readonly="true" name="loginName" value="${user.loginName}"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">旧密码：</label>
				<div class="col-sm-8">
					<input class="form-control" type="password" name="oldPassword" id="oldPassword">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">新密码：</label>
				<div class="col-sm-8">
					<input class="form-control" type="password" name="newPassword" id="newPassword">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">再次确认：</label>
				<div class="col-sm-8">
					<input class="form-control" type="password" name="confirm" id="confirm">
					<span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 请再次输入您的密码</span>
				</div>
			</div>
		</form>
	</div>
<%@ include file="../../include.jsp"%>
<script src="/goldenetbj/user/profile/resetPwd.js" ></script>
</body>

</html>
