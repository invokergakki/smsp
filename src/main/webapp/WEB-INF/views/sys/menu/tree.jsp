<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="菜单树选择"></title>
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
		<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
	<link href="/ajax/libs/jquery-ztree/3.5/css/metro/zTreeStyle.css" rel="stylesheet"/>
</head>
<style>
	body{height:auto;font-family: "Microsoft YaHei";}
	button{font-family: "SimSun","Helvetica Neue",Helvetica,Arial;}
</style>
<body class="hold-transition box box-main">
	<input id="treeId"   name="treeId"    type="hidden" value="${menu.menuId}"/>
	<input id="treeName" name="treeName"  type="hidden" value="${menu.menuName}"/>
	<div class="wrapper"><div class="treeShowHideButton" onclick="$.tree.toggleSearch();">
		<label id="btnShow" title="显示搜索" style="display:none;">︾</label>
		<label id="btnHide" title="隐藏搜索">︽</label>
	</div>
	<div class="treeSearchInput" id="search">
		<label for="keyword">关键字：</label><input type="text" class="empty" id="keyword" maxlength="50">
		<button class="btn" id="btn" onclick="$.tree.searchNode()"> 搜索 </button>
	</div>
	<div class="treeExpandCollapse">
		<a href="#" onclick="$.tree.expand()">展开</a> /
		<a href="#" onclick="$.tree.collapse()">折叠</a>
	</div>
	<div id="tree" class="ztree treeselect"></div>
	</div>
<%@ include file="../include.jsp"%>
<script src="/goldenetbj/menu/tree.js" ></script>
<script src="/ajax/libs/jquery-ztree/3.5/js/jquery.ztree.all-3.5.js"></script>
</body>
</html>
