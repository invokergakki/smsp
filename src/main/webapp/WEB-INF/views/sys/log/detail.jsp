<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="操作日志详细"></title>
	<link rel="shortcut icon" href="favicon.ico">
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
	<link href="/ajax/libs/jsonview/jquery.jsonview.css" rel="stylesheet"/>
</head>
<body class="white-bg">
	<div class="wrapper wrapper-content animated fadeInRight ibox-content">
	<form class="form-horizontal m-t" id="signupForm">
		<input id="operparamvo" name="operparamvo" type="hidden"   value="${operLog.operParam}" />
		<div class="form-group">
			<label class="col-sm-2 control-label">操作模块：</label>
			<div class="form-control-static getLabel sys_oper_type" >

			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">登录信息：</label>
			<div class="form-control-static" >

			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">请求地址：</label>
			<div class="form-control-static" >
				${operLog.operUrl}
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">操作方法：</label>
			<div class="form-control-static" >
				${operLog.method}
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">请求参数：</label>
			<div class="form-control-static"><pre id="operParam"></pre></div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">状态：</label>
			<div class="form-control-static"  >
				${operLog.status}
			</div>
		</div>
		<div class="form-group" >
			<label class="col-sm-2 control-label">异常信息：</label>
			<div class="form-control-static" >
				${operLog.errorMsg}
			</div>
		</div>
	</form>
    </div>
<%@ include file="../include.jsp"%>
<script src="/ajax/libs/jsonview/jquery.jsonview.js"></script>
<script src="/goldenetbj/log/detail.js"></script>
</body>
</html>