<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="菜单列表"></title>
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
</head>
<body class="gray-bg">
 <div class="container-div ui-layout-center">
		<div class="row">
			<div class="col-sm-12 search-collapse">
				<form id="user-form">
					<div class="select-list">
						<ul>
							<li>
								平台账号：<input type="text" name="account"/>
							</li>
							<li>
								平台Url：<input type="text" name="smsVariableRequestUrl"/>
							</li>
							<li>
								平台状态：
								<select name="status" >
									<option  value="">全部</option>
									<option  value="0">停用</option>
									<option  value="1">可用</option>
								</select>
							</li>
							<li>
								<a class="btn btn-primary btn-rounded btn-sm" onclick="$.table.search()"><i class="fa fa-search"></i>&nbsp;搜索</a>
							    <a class="btn btn-warning btn-rounded btn-sm" onclick="$.form.reset()"><i class="fa fa-refresh"></i>&nbsp;重置</a>
							</li>
						</ul>
					</div>
				</form>
			</div>
			<div class="btn-group-sm" id="toolbar" role="group">
				<a class="btn btn-success" onclick="$.operate.add(0)" >
					<i class="fa fa-plus"></i> 新增
				</a>
				<a class="btn btn-danger btn-del disabled" onclick="$.operate.removeAll()" >
					<i class="fa fa-remove"></i> 删除
				</a>
			</div>
	        <div class="col-sm-12 select-table table-striped">
			    <table id="bootstrap-table" data-mobile-responsive="true"></table>
			</div>
		</div>
	</div>

<%@ include file="../../include.jsp"%>
<script src="/goldenetbj/sms/send/send.js" ></script>
</body>
</html>