<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<%--<input type="hidden" id="deptId" name="deptId">--%>
	                <%--<input type="hidden" id="parentId" name="parentId">--%>
					<div class="select-list">
						<ul>
							<li>
								设备名称：<input type="text" name="imeiName"/>
							</li>
							<li>
								归属部门：<select name="deptId" >
								<option  value="">全部</option>
								<c:if test="${not empty sysDept}">
									<c:forEach var="dept"  items="${sysDept}">
										<option  value="${dept.deptId}">${dept.deptName}</option>
									</c:forEach>
								</c:if>
							  </select>

							</li>
							<li>
								设备状态：<select name="state" >
								<option value="">全部</option>
								<c:if test="${not empty dict_facilityStatus}">
									<c:forEach var="dict"  items="${dict_facilityStatus}">
										<option  value="${dict.dictLabel}">${dict.dictValue}</option>
									</c:forEach>
								</c:if>
							  </select>
							</li>
							<li>
								设备运行状态：<select name="runningState" >
								<option  value="">全部</option>
								<option  value="0">正常</option>
								<option  value="1">停止</option>
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
	        	<a class="btn btn-success" onclick="$.operate.addTab()">
	                <i class="fa fa-plus"></i> 新增
	            </a>
	             <a class="btn btn-primary btn-edit disabled" onclick="$.operate.editTab()" >
		            <i class="fa fa-edit"></i> 修改
		        </a>
	            <a class="btn btn-danger btn-del disabled" onclick="$.operate.removeAll()" >
	                <i class="fa fa-remove"></i> 删除
	            </a>
				<a class="btn btn-info" onclick="$.table.importExcel()">
					<i class="fa fa-upload"></i> 导入
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
<script src="/goldenetbj/sensor/sensor.js" ></script>
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