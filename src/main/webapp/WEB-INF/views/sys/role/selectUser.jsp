<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="分配角色选择用户"></title>
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/> 
</head>

<body class="gray-bg">
	<div class="container-div">
		<div class="row">
			<div class="col-sm-12 search-collapse">
				<form id="role-form">
				    <input type="hidden" id="roleId" name="roleId" value="${role.roleId}">
					<div class="select-list">
						<ul>
							<li>
								登录名称：<input type="text" name="loginName"/>
							</li>
							<li>
								手机号码：<input type="text" name="phonenumber"/>
							</li>
							<li>
								<a class="btn btn-primary btn-rounded btn-sm" onclick="$.table.search()"><i class="fa fa-search"></i>&nbsp;搜索</a>
							    <a class="btn btn-warning btn-rounded btn-sm" onclick="$.form.reset()"><i class="fa fa-refresh"></i>&nbsp;重置</a>
							</li>
						</ul>
					</div>
				</form>
			</div>
	        
	        <div class="col-sm-12 select-table table-striped">
			    <table id="bootstrap-table" data-mobile-responsive="true"></table>
			</div>
		</div>
	</div>
<%@ include file="../include.jsp"%>
<script src="/goldenetbj/role/selectUser.js" ></script>
</body>
</html>