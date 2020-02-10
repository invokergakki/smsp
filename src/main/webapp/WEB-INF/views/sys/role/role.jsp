<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:shiro="http://www.pollix.at/thymeleaf/shiro">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="角色列表"></title>
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
					<div class="select-list">
						<ul>
							<li>
								角色名称：<input type="text" name="roleName"/>
							</li>
							<li>
								角色状态：<select name="status" >
									<option value="">所有</option>
								    <option value="0">正常</option>
								    <option value="1">停用</option>
								</select>
							</li>
							<li class="select-time">
								<label>创建时间： </label>
								<input type="text" class="time-input" id="startTime" placeholder="开始时间" name="params[beginTime]"/>
								<span>-</span>
								<input type="text" class="time-input" id="endTime" placeholder="结束时间" name="params[endTime]"/>
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
				<a class="btn btn-success" onclick="$.operate.add()" shiro:hasPermission="system:role:add">
	                <i class="fa fa-plus"></i> 新增
	            </a>
	            <a class="btn btn-primary btn-edit disabled" onclick="$.operate.edit()" shiro:hasPermission="system:role:edit">
		            <i class="fa fa-edit"></i> 修改
		        </a>
				<a class="btn btn-danger btn-del disabled" onclick="$.operate.removeAll()" shiro:hasPermission="system:role:remove">
		            <i class="fa fa-remove"></i> 删除
		        </a>
	        </div>
	        
	        <div class="col-sm-12 select-table table-striped">
			    <table id="bootstrap-table" data-mobile-responsive="true"></table>
			</div>
		</div>
	</div>
<%@ include file="../include.jsp"%>
<script src="/goldenetbj/role/role.js" ></script>
</body>
</html>