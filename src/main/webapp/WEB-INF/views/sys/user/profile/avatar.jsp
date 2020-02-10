<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="修改用户头像"></title>
	<link rel="shortcut icon" href="favicon.ico">
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
	<link href="/ajax/libs/cropbox/cropbox.css" rel="stylesheet"/>
</head>
<body class="white-bg">
    <div class="container"> 
        <div class="imageBox"> 
	        <div class="thumbBox"></div> 
	        <div class="spinner" style="display: none">Loading...</div> 
	   </div> 
	   <div class="action"> 
	       <div class="new-contentarea tc">
	           <a href="javascript:void(0)" class="upload-img"> <label for="avatar">上传图像</label> </a> 
	           <input type="file" class="" name="avatar" id="avatar" accept="image/*"/>
	       </div> 
	   <input type="button" id="btnCrop" class="Btnsty_peyton" value="裁切" /> 
	   <input type="button" id="btnZoomIn" class="Btnsty_peyton" value="+" /> 
	   <input type="button" id="btnZoomOut" class="Btnsty_peyton" value="-" /> 
	   </div> 
	   <div class="cropped"></div> 
    </div>
<%@ include file="../../include.jsp"%>
<script src="/ajax/libs/cropbox/cropbox.js"></script>
<script src="/goldenetbj/user/profile/avatar.js" ></script>
</body>
</html>
