<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title text="新增用户"></title>
	<link rel="shortcut icon" href="favicon.ico">
	<link href="/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="/css/font-awesome.min.css" rel="stylesheet"/>
	<!-- bootstrap-table 表格插件样式 -->
	<link href="/ajax/libs/bootstrap-table/bootstrap-table.min.css" rel="stylesheet"/>
	<link href="/css/animate.css" rel="stylesheet"/>
	<link href="/css/style.css" rel="stylesheet"/>
	<link href="/goldenetbj/css/ry-ui.css" rel="stylesheet"/>
    <link href="/ajax/libs/select/select2.css" rel="stylesheet"/>
    <link href="/ajax/libs/select/select2-bootstrap.css" rel="stylesheet"/>
</head>
<body>
    <div class="form-content">
        <form id="form-user-add" class="form-horizontal">
            <input name="deptId" type="hidden" id="treeId"/>
            <h4 class="form-header h4">基本信息</h4>
            <div class="row">
            	<div class="col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><span style="color: red; ">*</span>登录账号：</label>
                        <div class="col-sm-8">
                            <input name="userName" value=" " autocomplete="off" placeholder="请输入用户名称" class="form-control" type="text" maxlength="30" required>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><span style="color: red; ">*</span>用户名称：</label>
                        <div class="col-sm-8">
                            <input name="loginName" value=" "  placeholder="请输入登录账号" autocomplete="off" class="form-control required" type="text" maxlength="30" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><span style="color: red; ">*</span>登录密码：</label>
                        <div class="col-sm-8">
                            <input name="password" placeholder="请输入登录密码" autocomplete="off" class="form-control required" type="password"  required>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><span style="color: red; ">*</span>手机号码：</label>
                        <div class="col-sm-8">
                            <input name="phonenumber" autocomplete="off" placeholder="请输入手机号码" class="form-control" type="text" maxlength="11" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><span style="color: red; ">*</span>邮箱：</label>
                        <div class="col-sm-8">
                            <input name="email" autocomplete="off" class="form-control email" type="text" maxlength="50" placeholder="请输入邮箱" required>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><span style="color: red; ">*</span>归属部门：</label>
                        <div class="col-sm-8">
                            <div class="input-group">
                                <input name="deptName" onclick="selectDeptTree()" id="treeName" type="text" placeholder="请选择归属部门" class="form-control " required>
                                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">用户性别：</label>
                        <div class="col-sm-8">
                            <div class="input-group" style="width: 100%">
                                <select name="sex" class="form-control m-b sys_user_sex"  >
                                    <option   value="0">男</option>
                                    <option   value="1">女</option>
                                    <option   value="2">未知</option>
				                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">用户状态：</label>
                        <div class="col-sm-8">
                            <label class="toggle-switch switch-solid">
	                            <input type="checkbox" id="status" checked>
	                            <span></span>
	                        </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
            	<div class="col-sm-12">
                    <div class="form-group">
                        <label class="col-xs-2 control-label">角色：</label>
                        <div class="col-xs-10">
                             <c:if test="${not empty sysRoles}">
                                 <c:forEach var="roleIds"  items="${sysRoles}">
                                 <label  class="check-box">
                                     <input name="roleIds"  type="checkbox"  value="${roleIds.roleId}"/>${roleIds.roleName}
                                 </label>

                                 </c:forEach>
                             </c:if>
                        </div>
                    </div>
                </div>
            </div>
            <h4 class="form-header h4">其他信息</h4>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="col-xs-2 control-label">备注：</label>
                        <div class="col-xs-10">
                            <textarea name="remark" autocomplete="off" maxlength="500" class="form-control" rows="3"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
      
    <div class="row">
        <div class="col-sm-offset-5 col-sm-10">
            <button type="button" class="btn btn-sm btn-primary" onclick="submitHandler()"><i class="fa fa-check"></i>保 存</button>&nbsp;
            <button type="button" class="btn btn-sm btn-danger" onclick="closeItem()"><i class="fa fa-reply-all"></i>关 闭 </button>
        </div>
    </div>
<%@ include file="../include.jsp"%>
<script src="/ajax/libs/select/select2.js"></script>
<script src="/goldenetbj/user/add.js" ></script>
</body>
</html>
