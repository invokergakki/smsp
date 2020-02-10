<%@ page import="com.syn.smsp.constant.Constant" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="UTF-8">
    <title><%=Constant.system_name%></title>
    <meta name="keywords" content="长城金点,长城金点开源,长城金点框架,长城金点系统,goldenetbj">
    <meta name="description" content="长城金点基于SpringBoot2.0的权限管理系统 易读易懂、界面简洁美观。 核心技术采用Spring、MyBatis、Shiro没有任何其它重度依赖">
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/font-awesome.min.css"  rel="stylesheet"/>
    <link href="css/style.css"  rel="stylesheet"/>
    <link href="css/login.min.css"  rel="stylesheet"/>
    <link href="goldenetbj/css/ry-ui.css" rel="stylesheet"/>

</head>
<body class="signin">
<script language="javascript">
    if(top.location!==self.location){
        top.location.href=self.location.href;
    }
</script>
<div class="signinpanel">
    <div class="row">
        <div class="col-sm-7">
            <div class="signin-info">
                <div class="m-b" style="margin-top: 100px; margin-left: -75px;" >
                    <h1><a style="font-family:MicrosoftYaHei;color: white;font-size: 38px;"><%=Constant.system_name%> </a></h1>
                    <h1><a style="font-family:MicrosoftYaHei;color: white;font-size: 20px;">IOT Fire-Control Managed Platform</a></h1>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <form id="signupForm">
<%--                <p style="font-size:20px;font-family:KaiTi;">登录：</p>--%>
<%--                <p style="font-size:20px;font-family:KaiTi;">北京长城金点物联网有限公司</p>--%>
                <img src="../img/loginLogo.png" width="163px" height="51px" >
                <input type="text" name="username" id="username"  class="form-control uname" placeholder="用户名">
                <label id="username-error1"  style="display: none;color:red;">  <i class='fa fa-times-circle'></i>请输入您的用户名  </label>
                <input type="password" name="password" id="password"  class="form-control pword" placeholder="密码" >
                <label id="password-error1" style="display: none;color:red;">  <i class='fa fa-times-circle'></i>请输入您的密码  </label>
                <input type="text" name="captcha" class="form-control code" style="margin-top: 15px;width:100px;height:50px;" placeholder="验证码" autocomplete="off" >
                <div onclick="captcha()"><img alt="如果看不清楚，请单击图片刷新！" id="captchaImg" class="pointer" src="captcha.jpg" style="width: 127px;height:50px;margin-top: -65px;margin-left: 105px;;"></div>
                <div class="form-group has-feedback" style="float: right">
                    <a href="javascript:" onclick="captcha()" style="color: white;">点击刷新</a>
                </div>
                <button class="btn btn-success btn-block" id="btnSubmit">登录</button>
            </form>
        </div>
    </div>
    <div class="signup-footer">
        <div class="pull-left">
            <a href="http://www.goldenetbj.cn/" target="_blank" rel="nofollow"> </a><br>
        </div>
    </div>
</div>
<script type="text/javascript">
    function captcha(){
        $("#captchaImg").attr("src","captcha.jpg");
    }
</script>
<!-- 全局js -->
<script src="/js/jquery.min.js" ></script>
<script src="/js/bootstrap.min.js"></script>
<!-- 验证插件 -->
<script src="/ajax/libs/validate/jquery.validate.min.js" ></script>
<script src="/ajax/libs/validate/messages_zh.min.js" ></script>
<script src="/ajax/libs/layer/layer.min.js" ></script>
<script src="/ajax/libs/blockUI/jquery.blockUI.js" ></script>
<script src="/js/vue.min.js"></script>
<script src="/goldenetbj/js/ry-ui.js" ></script>
<script src="/goldenetbj/login.js" ></script>
</body>
</html>
