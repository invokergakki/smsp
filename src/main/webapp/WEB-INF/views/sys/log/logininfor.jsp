<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="登录日志列表"></title>
	<link rel="shortcut icon" href="favicon.ico">
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
				<form id="logininfor-form">
					<div class="select-list">
						<ul>
							<li>
								<label>登录地址：</label><input type="text" name="ipaddr"/>
							</li>
							<li>
								<label>登录名称：</label><input type="text" name="loginName"/>
							</li>
							<li>
								<label>登录状态：</label><select name="status" >
									<option value="">所有</option>
									<option  text="" value="0">成功</option>
									<option  text="" value="1">失败</option>
								</select>
							</li>
							<li class="select-time">
								<label>登录时间： </label>
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
				<a class="btn btn-danger btn-del disabled" onclick="$.operate.removeAll()" shiro:hasPermission="monitor:logininfor:remove">
		            <i class="fa fa-remove"></i> 删除
		        </a>
		        <a class="btn btn-danger" onclick="$.operate.clean()" shiro:hasPermission="monitor:logininfor:remove">
	                <i class="fa fa-trash"></i> 清空
	            </a>
	        </div>
        
	        <div class="col-sm-12 select-table table-striped">
			    <table id="bootstrap-table" data-mobile-responsive="true"></table>
			</div>
		</div>
	</div>

<%@ include file="../include.jsp"%>
<script src="/goldenetbj/log/logininfor.js"></script>
</body>
</html>