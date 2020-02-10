<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
    <div class="container-div">
		<div class="row">
			<div class="col-sm-12 search-collapse">
				<form id="menu-form">
					<div class="select-list">
						<ul>
							<li>
								菜单名称：<input type="text" name="menuName"/>
							</li>
							<li>
								菜单状态：<select name="visible" >
									<option value="">所有</option>
									<option value="0">显示</option>
									<option value="1">隐藏</option>
								</select>
							</li>
							<li>
								<a class="btn btn-primary btn-rounded btn-sm" onclick="$.treeTable.search()"><i class="fa fa-search"></i>&nbsp;搜索</a>
								<a class="btn btn-warning btn-rounded btn-sm" onclick="$.form.reset()"><i class="fa fa-refresh"></i>&nbsp;重置</a>
							</li>
						</ul>
					</div>
				</form>
			</div>

			<div class="btn-group-sm" id="toolbar" role="group">
				<a class="btn btn-success" onclick="$.operate.add(0)" shiro:hasPermission="system:menu:add">
				     <i class="fa fa-plus"></i> 新增
				</a>
				<a class="btn btn-primary" onclick="$.operate.edit()" shiro:hasPermission="system:menu:edit">
				     <i class="fa fa-edit"></i> 修改
				</a>
				<a class="btn btn-info" id="expandAllBtn">
				     <i class="fa fa-exchange"></i> 展开/折叠
				</a>
			</div>
       		 <div class="col-sm-12 select-table table-striped">
	            <table id="bootstrap-tree-table" data-mobile-responsive="true"></table>
	        </div>
	    </div>
	</div>
<%@ include file="../include.jsp"%>
<script src="/goldenetbj/menu/menu.js" ></script>
</body>
</html>