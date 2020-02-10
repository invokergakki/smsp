<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title text="修改用户"></title>
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
    <form class="form-horizontal" id="form-sensor-edit">
        <input name="deptId" type="hidden"  value="${imei.deptId}" id="treeId"/>
        <h4 class="form-header h4">基本信息</h4>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label">编号: </label>
                    <div class="col-sm-8">
                        <input name="IMEI" autocomplete="off" value="${imei.IMEI}" readonly="true"   class="form-control" type="text" maxlength="140" >
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label">归属部门：</label>
                    <div class="col-sm-8">
                        <div class="input-group">
                            <input class="form-control" type="text" name="deptName" onclick="selectDeptTree()" id="treeName" value="${imei.deptName}" required>
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label">名称：</label>
                    <div class="col-sm-8">
                        <input name="imeiName"  value="${imei.imeiName}" placeholder="请输入名称" autocomplete="off" class="form-control" type="text" maxlength="140">
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="col-sm-4 control-label">电话：</label>
                    <div class="col-sm-8">
                        <input name="phone"  value="${imei.phone}" placeholder="请输入手机号" autocomplete="off" class="form-control" type="text" minlength="11"  maxlength="11">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group" >
                    <label class="col-sm-4 control-label"> 设备类型:</label>
                    <div class="col-sm-8">
                            <select name="deviceType" class="form-control m-b sys_user_sex">
                                <option  value=""></option>
                                <c:if test="${not empty dict_deviceType}">
                                    <c:forEach var="dict"  items="${dict_deviceType}">
                                        <c:choose>
                                            <c:when test="${dict.dictLabel eq imei.deviceType}">
                                                <option  value="${dict.dictLabel}" selected>${dict.dictValue}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option  value="${dict.dictLabel}">${dict.dictValue}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </c:if>
                            </select>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group" >
                    <label class="col-sm-4 control-label">设备通信类型: 	</label>
                    <div class="col-sm-8">
                        <select name="sensorType" class="form-control m-b sys_user_sex" >
                            <option  value=""></option>
                            <c:if test="${not empty dict_sensorType}">
                                <c:forEach var="dict"  items="${dict_sensorType}">
                                    <c:choose>
                                        <c:when test="${dict.dictLabel eq imei.sensorType}">
                                            <option  value="${dict.dictLabel}" selected>${dict.dictValue}</option>
                                        </c:when>
                                        <c:otherwise>
                                            <option  value="${dict.dictLabel}">${dict.dictValue}</option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </c:if>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="row">--%>
        <%--<div class="col-sm-12">--%>
        <%--<div class="form-group" style="margin-left:3px;">--%>
        <%--<label class="col-xs-2 control-label">平面图：</label>--%>
        <%--<div class="col-xs-10" >--%>
        <%--<label  class="check-box" style="width:180px;margin-left:-40px;margin-top:-15px;">--%>
        <%--<input id="sensorPicture" value="${imei.sensorPicture}"  name="sensorPicture" readonly="readonly" type="text" style="border:1px solid #d9d9d9;width:150px;height:32px;">--%>
        <%--</label>--%>
        <%--<label  class="check-box" style="width:50px;margin-left:1px;">--%>
        <%--<input id="ButtonA" onclick="FileUploadA.click()" type="button" value="选择图片" style="font-size: 12px">--%>
        <%--<div   style="display: none;">--%>
        <%--<input type="file" name="FileUploadA" id="FileUploadA" onchange="sensorPicture.value=this.value"  />--%>
        <%--</div>--%>
        <%--</label>--%>
        <%--<label  class="check-box" style="width:50px;margin-left:20px;">--%>
        <%--<input type="button" name="Buttonup_A" value="上传" id="Buttonup_A" style="width:60px;font-size: 12px">--%>
        <%--</label>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <h4 class="form-header h4">地图</h4>
        <div class="row">
            <div class="col-sm-12">
                <div class="form-group">
                    <div style="border:1px solid #d9d9d9;width:85%;margin-left:100px;">
                        <div id="dituContent" style="height: 280px; overflow: hidden; position: relative; z-index: 0; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); text-align: center;">
                        </div>  &nbsp; &nbsp; &nbsp;
                        条件： <input name="city" value="${imei.sensorLocation}" type="text" maxlength="20" id="city" onclick="getAddr()" style="width:200px;"  /> <input type="button" value="查询" name="btn" onclick="getAddr();" style="font-size: 12px;" />
                        X坐标：<input name="XCoordinates" type="text" value="0" maxlength="50" id="XCoordinates" onkeyup="value=value.replace(/[^\d0-9]/ig,'')" style="width:50px;" /> &nbsp; &nbsp; &nbsp; &nbsp;
                        Y坐标：<input name="YCoordinates" type="text" value="0" maxlength="50" id="YCoordinates" style="width:50px;" /> &nbsp; &nbsp; &nbsp; &nbsp;
                        地址： <input name="sensorLocation" value="${imei.sensorLocation}"  type="text" maxlength="20" id="sensorLocation" style="font-size:16px;width:200px;"   />
                        <br/><br/>
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
<script src="/goldenetbj/sensor/edit.js" ></script>
<script src="/goldenetbj/sensor/api" ></script>
</body>
</html>