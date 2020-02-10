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
    <form class="form-horizontal m" id="form-smssend-add">
        <c:if test="${not empty smsSend}">
            <input name="id"   type="hidden"   value="${smsSend.id}"/>
        </c:if>
        <br/> <br/> <br/>
        <div class="form-group">
            <label class="col-sm-3 control-label">平台账号：</label>
            <div class="col-sm-8">
                <input class="form-control" type="text" name="account" id="account" value="${smsSend.account}" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">平台密码：</label>
            <div class="col-sm-8">
                <input class="form-control" type="text" name="password" id="password" value="${smsSend.password}" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">平台Url：</label>
            <div class="col-sm-8">
                <input class="form-control" type="text" name="smsVariableRequestUrl" id="smsVariableRequestUrl" value="${smsSend.smsVariableRequestUrl}"  required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">模板ID：</label>
            <div class="col-sm-8">
                <select name="smsTemplateId" class="form-control m-b sys_user_sex">
                    <c:if test="${not empty smsTemplate}">
                        <c:forEach var="sms"  items="${smsTemplate}">
                            <c:choose>
                                <c:when test="${sms.id eq smsSend.smsTemplateId}">
                                    <option  value="${sms.id}" selected>${sms.module}</option>
                                </c:when>
                                <c:otherwise>
                                    <option  value="${sms.id}" >${sms.module}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </c:if>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">平台状态：</label>
            <div class="col-sm-8">
                <c:choose>
                    <c:when test="${smsSend.status==1}">
                        <label class="radio-box"> <input type="radio"   value="0" name="status" /> 停用 </label>
                        <label class="radio-box"> <input type="radio"   value="1" name="status" checked/>  可用 </label>
                    </c:when>
                    <c:otherwise>
                        <label class="radio-box"> <input type="radio"   value="0" name="status" checked/> 停用 </label>
                        <label class="radio-box"> <input type="radio"   value="1" name="status" />  可用 </label>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </form>
</div>
<%@ include file="../../include.jsp"%>
<script src="/goldenetbj/sms/send/edit.js" ></script>
</body>
</html>
