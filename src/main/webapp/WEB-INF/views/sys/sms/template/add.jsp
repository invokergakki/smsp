<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title text="新增菜单"></title>
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- bootstrap-table 表格插件样式 -->
    <link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
    <link href="/css/animate.css" rel="stylesheet"/>
    <link href="/css/style.css" rel="stylesheet"/>
    <link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
</head>
<body class="white-bg">
<div class="wrapper wrapper-content animated fadeInRight ibox-content">
    <form class="form-horizontal m" id="form-smstemplate-add">
        <br/><br/><br/>
        <div class="form-group">
            <label class="col-sm-3 control-label">手机号：</label>
            <div class="col-sm-8">
                <input class="form-control" type="text" name="mobile" id="mobile" autocomplete="off" placeholder="请输入手机号码" minlength="11"  maxlength="11" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">模板标题：</label>
            <div class="col-sm-8">
                <input class="form-control" type="text" name="module" id="module"  maxlength="25"  required>
            </div>
        </div>
        <%--<div class="form-group">--%>
            <%--<label class="col-sm-3 control-label">模板变量：</label>--%>
            <%--<div class="col-sm-8">--%>
                <%--<input class="form-control" type="text" name="variable" id="variable"  maxlength="100"  required>--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="form-group">
            <label class="col-sm-3 control-label">模板格式：</label>
            <div class="col-sm-8">
                <textarea rows="3" cols="50" class="form-control"  name="templateMsg" id="templateMsg"  maxlength="255"  required>  </textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">模板状态：</label>
            <div class="col-sm-8">
                <label class="radio-box"> <input type="radio"   value="0" name="status" checked/>  停用 </label>
                <label class="radio-box"> <input type="radio"   value="1" name="status" /> 可用 </label>
            </div>
        </div>
    </form>
</div>
<%@ include file="../../include.jsp"%>
<script src="/goldenetbj/sms/template/add.js" ></script>
</body>
</html>
