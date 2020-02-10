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
	<div class="ui-layout-west">
		<div class="main-content">
			<div class="box box-main">
				<div class="box-header">
					<div class="box-title">
						<i class="fa icon-grid"></i> 组织机构
					</div>
					<div class="box-tools pull-right">
					    <a type="button" class="btn btn-box-tool menuItem" href="#" onclick="dept()" title="管理部门"><i class="fa fa-edit"></i></a>
						<button type="button" class="btn btn-box-tool" id="btnExpand" title="展开" style="display:none;"><i class="fa fa-chevron-up"></i></button>
						<button type="button" class="btn btn-box-tool" id="btnCollapse" title="折叠"><i class="fa fa-chevron-down"></i></button>
						<button type="button" class="btn btn-box-tool" id="btnRefresh" title="刷新部门"><i class="fa fa-refresh"></i></button>
					</div>
				</div>
				<div class="ui-layout-content">
					<div id="tree" class="ztree"></div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-div ui-layout-center">
		<div class="row">
			<div class="col-sm-12 search-collapse">
				<form id="user-form">
					<input type="hidden" id="deptId" name="deptId">
	                <input type="hidden" id="parentId" name="parentId">
					<div class="select-list">
						<ul>
							<li>
								登录名称：<input type="text" name="loginName"/>
							</li>
							<li>
								手机号码：<input type="text" name="phonenumber"/>
							</li>
							<li>
								用户状态：<select name="status" >
									<option value="">所有</option>
									<option  text="" value="0">正常</option>
								    <option  text="" value="1">禁用</option>
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
	        	<a class="btn btn-success" onclick="$.operate.addTab()">
	                <i class="fa fa-plus"></i> 新增
	            </a>
	             <a class="btn btn-primary btn-edit disabled" onclick="$.operate.editTab()" >
		            <i class="fa fa-edit"></i> 修改
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

<%@ include file="../include.jsp"%>
<script src="/ajax/libs/jquery-layout/jquery.layout-latest.js"></script>
<script src="/ajax/libs/jquery-ztree/3.5/js/jquery.ztree.all-3.5.js"></script>
<script src="/goldenetbj/user/user.js" ></script>
</body>
<form id="importForm" enctype="multipart/form-data" class="mt20 mb10" style="display: none;">
	<div class="col-xs-offset-1">
		<input type="file" id="file" name="file"/>
		<div class="mt10 pt5">
			<input type="checkbox" id="updateSupport" name="updateSupport" title="如果登录账户已经存在，更新这条数据。"> 是否更新已经存在的用户数据
			 &nbsp;	<a onclick="$.table.importTemplate()" class="btn btn-default btn-xs"><i class="fa fa-file-excel-o"></i> 下载模板</a>
		</div>
		<font color="red" class="pull-left mt10">
			提示：仅允许导入“xls”或“xlsx”格式文件！
		</font>
	</div>
</form>
</html>