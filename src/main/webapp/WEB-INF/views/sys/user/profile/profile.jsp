<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="用户个人信息"></title>
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
</head>

<body class="gray-bg" style="font: 14px Helvetica Neue, Helvetica, PingFang SC, 微软雅黑, Tahoma, Arial, sans-serif !important;">
    <input id="userId" name="userId" type="hidden" value="${user.userId}" />
    <section class="section-content">
    <div class="row">
        <div class="col-xs-3 pr5">
            <div class="ibox float-e-margins">
                <div class="ibox-title ibox-title-gray dashboard-header gray-bg">
                    <h5>个人资料</h5>
                </div>
                <div class="ibox-content">
                    <div class="text-center">
                        <p><img class="img-circle img-lg"  src="<%="/sys/user/read/uploadPic"%>?pic_path=${user.avatar}"></p>
                        <p><a href="javascript:avatar()">修改头像</a></p>
                    </div>
                    <ul class="list-group list-group-striped">
                        <li class="list-group-item"><i class="fa fa-user"></i>
                            <b class="font-noraml">登录名称：</b>
                            <p class="pull-right">${user.loginName}</p>
                        </li>
                        <li class="list-group-item"><i class="fa fa-phone"></i>
                            <b  class="font-noraml">手机号码：</b>
                            <p class="pull-right">${user.phonenumber}</p>
                        </li>
                        <li class="list-group-item"><i class="fa fa-group"></i>
                            <b  class="font-noraml">所属部门：</b>
                            <p class="pull-right" >${user.remark} </p>
                        </li>
                        <li class="list-group-item"><i class="fa fa-envelope-o"></i>
                            <b  class="font-noraml">邮箱地址：</b>
                            <p class="pull-right" >${user.email}</p>
                        </li>
                        <li class="list-group-item"><i class="fa fa-calendar"></i>
                            <b  class="font-noraml">创建时间：</b>
                            <p class="pull-right" >${user.salt}</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
        <div class="col-xs-9" style="padding-left: 0px">
            <div class="ibox float-e-margins">
                <div class="ibox-title ibox-title-gray dashboard-header">
                    <h5>基本资料</h5>
                </div>
                <div class="ibox-content">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#user_info" data-toggle="tab" aria-expanded="true">基本资料</a></li>
                            <li class="active12"><a href="#modify_password" data-toggle="tab" aria-expanded="false">修改密码</a></li>
                        </ul>
                        <div class="tab-content">
                            <!--用户信息-->
                            <div class="tab-pane active" id="user_info" object="${user}">
                                <form class="form-horizontal" id="form-user-edit">
                                    <!--隐藏ID-->
                                    <input name="id" id="id" type="hidden">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">用户登录名称：</label>
                                        <div class="col-sm-10">
                                            <input type="text" autocomplete="off" class="form-control" name="loginName"  value="${user.loginName}" placeholder="请输入用户名称">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">用户登录账号：</label>
                                        <div class="col-sm-10">
                                            <input type="text" autocomplete="off" class="form-control" name="userName"  value="${user.userName}" placeholder="请输入用户名称">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">手机号码：</label>
                                        <div class="col-sm-10">
                                            <input type="text" autocomplete="off" class="form-control" name="phonenumber" maxlength="11"  value="${user.phonenumber}" placeholder="请输入手机号码">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">邮箱：</label>
                                        <div class="col-sm-10">
                                            <input type="text" autocomplete="off" class="form-control" name="email" value="${user.email}" placeholder="请输入邮箱">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">性别：</label>
                                        <div class="col-sm-10">
                                            <div class="radio-box">
                                                <c:choose>
                                                  <c:when test="${user.sex=='0'}">
                                                    <input type="radio" id="radio1"  name="sex" value="0" checked>
                                                    <label for="radio1">男</label>
                                                  </c:when>
                                                    <c:otherwise>
                                                        <input type="radio" id="radio1"  name="sex" value="0">
                                                        <label for="radio1">男</label>
                                                    </c:otherwise>
                                                </c:choose>
											</div>
											<div class="radio-box">
                                                <c:choose>
                                                    <c:when test="${user.sex=='1'}">
                                                        <input type="radio" id="radio2"  name="sex" value="1" checked>
                                                        <label for="radio2">女</label>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="radio" id="radio2"  name="sex" value="1">
                                                        <label for="radio2">女</label>
                                                    </c:otherwise>
                                                </c:choose>
											</div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" class="btn btn-sm btn-primary" onclick="submitUserInfo()"><i class="fa fa-check"></i>保 存</button>&nbsp;
                                            <button type="button" class="btn btn-sm btn-danger" onclick="closeItem()"><i class="fa fa-reply-all"></i>关 闭 </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            
                            <!--修改密码-->
                            <div class="tab-pane" id="modify_password">
                                <form class="form-horizontal" id="form-user-resetPwd">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">旧密码：</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" name="oldPassword" placeholder="请输入旧密码">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">新密码：</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" name="newPassword" id="newPassword" placeholder="请输入新密码">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">确认密码：</label>
                                        <div class="col-sm-10">
                                            <input type="password" class="form-control" name="confirmPassword" placeholder="请确认密码">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" class="btn btn-sm btn-primary" onclick="submitChangPassword()"><i class="fa fa-check"></i>保 存</button>&nbsp;
                                            <button type="button" class="btn btn-sm btn-danger" onclick="closeItem()"><i class="fa fa-reply-all"></i>关 闭 </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</section>

<%@ include file="../../include.jsp"%>
<script src="/goldenetbj/user/profile/profile.js" ></script>
</body>
</html>
