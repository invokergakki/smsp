<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="操作日志列表"></title>
	<link rel="shortcut icon" href="favicon.ico">
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
	<link href="/ajax/libs/bootstrap-select/bootstrap-select.css" rel="stylesheet"/>
</head>
<body class="gray-bg">
	<div class="container-div">
		<div class="row">
			<div class="col-sm-12 search-collapse">
				<form id="operlog-form">
					<div class="select-list">
						<ul>
							<li>
								<label>系统模块： </label><input type="text" name="title"/>
							</li>
							<li>
								<label>操作人员： </label><input type="text" name="operName"/>
							</li>
							<li class="select-selectpicker">
								<label>操作类型： </label><select id="businessTypes"  class="selectpicker" data-none-selected-text="请选择" multiple>
									<option  text="" value="0">其他</option>
									<option  text="" value="1">新增</option>
									<option  text="" value="2">修改</option>
									<option  text="" value="3">删除</option>
								</select>
							</li>
							<li>
								<label>操作状态：</label><select name="status" >
									<option value="">所有</option>
									<option  text="" value="0">正常</option>
									<option  text="" value="1">异常</option>
								</select>
							</li>
							<li class="select-time">
								<label>操作时间： </label>
								<input type="text" class="time-input" id="startTime" placeholder="开始时间" name="params[beginTime]"/>
								<span>-</span>
								<input type="text" class="time-input" id="endTime" placeholder="结束时间" name="params[endTime]"/>
							</li>
							<li>
								<a class="btn btn-primary btn-rounded btn-sm" onclick="searchPre()"><i class="fa fa-search"></i>&nbsp;搜索</a>
								<a class="btn btn-warning btn-rounded btn-sm" onclick="resetPre()"><i class="fa fa-refresh"></i>&nbsp;重置</a>
							</li>
						</ul>
					</div>
				</form>
			</div>
			
			<div class="btn-group-sm" id="toolbar" role="group">
				<a class="btn btn-danger btn-del disabled" onclick="$.operate.removeAll()" shiro:hasPermission="monitor:operlog:remove">
		            <i class="fa fa-remove"></i> 删除
		        </a>
		        <a class="btn btn-danger" onclick="$.operate.clean()" shiro:hasPermission="monitor:operlog:remove">
	                <i class="fa fa-trash"></i> 清空
	            </a>
	        </div>
	        
			<div class="col-sm-12 select-table table-striped">
				<table id="bootstrap-table" data-mobile-responsive="true"></table>
			</div>
		</div>
	</div>

<%@ include file="../include.jsp"%>
<script src="/ajax/libs/bootstrap-select/bootstrap-select.js"></script>
<script src="/goldenetbj/log/operlog.js"></script>
</body>
</html>