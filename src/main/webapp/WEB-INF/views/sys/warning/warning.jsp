<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="用户列表"></title>
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
	<link href="/ajax/libs/jquery-layout/jquery.layout-latest.css" rel="stylesheet"/>
	<link href="/ajax/libs/jquery-ztree/3.5/css/metro/zTreeStyle.css" rel="stylesheet"/>
</head>
<body class="gray-bg">
 <div class="container-div ui-layout-center">
		<div class="row">
			<div class="col-sm-12 search-collapse">
				<form id="user-form">
					<input type="hidden" id="deptId" name="deptId">
	                <input type="hidden" id="parentId" name="parentId">
					<div class="select-list">
						<ul>
							<li>
								设备名称：<input type="text" name="facilityName"/>
							</li>
							<li class="select-time">
								<label>最近报警时间： </label>
								<input type="text" class="time-input" id="startTime" placeholder="开始时间" name="params[beginTime]"/>
								<span>-</span>
								<input type="text" class="time-input" id="endTime" placeholder="结束时间" name="params[endTime]"/>
							</li>
							<li>
								解决状态：
								<select name="status" >
									<option  value="">全部</option>
									<option  value="0">未解决</option>
									<option  value="1">已解决</option>
								</select>
							</li>
							<li>
								<a class="btn btn-primary btn-rounded btn-sm" onclick="$.table.search()"><i class="fa fa-search"></i>&nbsp;搜索</a>
							    <a class="btn btn-warning btn-rounded btn-sm" onclick="$.form.reset()"><i class="fa fa-refresh"></i>&nbsp;重置</a>
							    <a class="btn btn-warning btn-rounded btn-sm" onclick="$.table.exportExcel()"><i class="fa fa-download"></i>&nbsp;导出</a>
							</li>
						</ul>
					</div>
				</form>
			</div>

			<div class="btn-group-sm" id="toolbar" role="group">
				<a class="btn btn-danger btn-del disabled" onclick="$.operate.editSelect()" >
					<i class="fa fa-edit"></i> 更改报警状态
				</a>
			</div>
	        
	        <div class="col-sm-12 select-table table-striped">
			    <table id="bootstrap-table" data-mobile-responsive="true"></table>
			</div>
		</div>
	</div>

<%@ include file="../include.jsp"%>
<script src="/ajax/libs/jquery-layout/jquery.layout-latest.js"></script>
<script src="/ajax/libs/jquery-ztree/3.5/js/jquery.ztree.all-3.5.js"></script>
<script src="/goldenetbj/warning/warning.js" ></script>
</body>
</html>