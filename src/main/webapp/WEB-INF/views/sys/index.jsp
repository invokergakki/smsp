<%@ page import="com.syn.smsp.constant.Constant" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta charset="UTF-8">
    <title><%=Constant.system_name%></title>
    <meta name="keywords" content="长城金点管理系统首页">
    <meta name="description" content="长城金点管理系统首页">
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="/css/animate.css" rel="stylesheet"/>
    <link href="/css/style.css" rel="stylesheet"/>
    <link href="/css/skins.css" rel="stylesheet"/>
    <link href="/goldenetbj/css/ry-ui.css?v=3.3.0" rel="stylesheet"/>
    <style type="text/css">
        #content-main.max { height: calc(100% - 110px); overflow: hidden; width: 100%; height: 100%; left: 0px; position: absolute; top: 0px; z-index: 9998; margin: 0; }
    </style>
</head>
<body class="fixed-sidebar full-height-layout gray-bg skin-blue" style="overflow: hidden" >
<div id="wrapper">

    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close">
            <i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="logo">
                    <%--<img src="../img/logo.png" width="120px" height="50px" style="margin-left:-30px;margin-top:-8px;">--%>
                    <%--<span style="margin-left:-10px;margin-top:-7px;"><a style="color:seashell;font-size: 24"><b>G S I T</b></a></span>--%>
				     <span class="logo-lg"></span>
            	</li>
                 <li class="active" style= "display:none">
                    <a href="index.html"><i class="fa fa-home"></i> <span class="nav-label">主页</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li class="active"><a class="menuItem" href="/sys/main">了解长城金点</a></li>
                    </ul>
                </li>
                <c:if test="${not empty menus}">
                <c:forEach var="menu"  items="${menus}">
                  <li>
                         <c:choose>
                          <c:when test="${menu.menuType=='M'}">
                              <a href="#" style="border: solid 1px #1F262D;">
                                  <i class="${menu.icon}" ></i>
                                  <span class="nav-label">${menu.menuName}</span>
                                  <span class="fa arrow"></span>
                              </a>
                          </c:when>
                          <c:otherwise>
                              <a  class="menuItem" href="${menu.url}"  style="border: solid 1px #1F262D;"><i class="${menu.icon}" ></i>${menu.menuName}</a>
                          </c:otherwise>
                          </c:choose>
                           <ul class="nav nav-second-level collapse">
                             <c:if test="${not empty menu.children}">
                               <c:forEach items="${menu.children}" var="cmenu">
                                   <li >
                                  <c:choose>
                                    <c:when test="${empty cmenu.children}">
                                      <a  class="menuItem" href="${cmenu.url}">${cmenu.menuName}</a>
                                    </c:when>
                                    <c:otherwise>
                                       <a  class="menuItem" href="${cmenu.url}">${cmenu.menuName}<span class="fa arrow"></span></a>
                                        <ul  class="nav nav-third-level">
                                        <c:forEach items="${cmenu.children}" var="emenu">
                                                <li ><a class="menuItem"  href="${emenu.url}">${emenu.menuName}</a></li>
                                        </c:forEach>
                                        </ul>
                                      </c:otherwise>
                                  </c:choose>
                                </li>
                              </c:forEach>
                             </c:if>
                            </ul>
                  </li>
                 </c:forEach>
                </c:if>
            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <a class="navbar-minimalize minimalize-styl-2" style="color:#FFF;" href="#" title="收起菜单">
                    	<i class="fa fa-bars"></i>
                    </a>
                </div>
                <ul class="nav navbar-top-links navbar-right welcome-message">
	                <%--<li ><a title="全屏显示" id="fullScreen" style="border: none;"><i class="fa fa-arrows-alt"></i> 全屏显示</a></li>--%>
                    <li class="dropdown user-menu">
						<a href="javascript:" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" style="border: none;">
                            <img id="kaptchaImage"  src="<%="/sys/user/read/uploadPic"%>?pic_path=${user.avatar}"  class="user-image">
							<span class="hidden-xs">${user.loginName} </span>
						</a>
						<ul class="dropdown-menu">
							<li class="mt5">
								<a href="/sys/user/profile" class="menuItem">
								<i class="fa fa-user"></i> 个人中心</a>
							</li>
							<li>
								<a onclick="resetPwd()" class="menuItem">
								<i class="fa fa-key"></i> 修改密码</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="/logout">
								<i class="fa fa-sign-out"></i> 退出登录</a>
							</li>
						</ul>
					</li>
                </ul>
            </nav>
        </div>
        <div class="row content-tabs">
            <button class="roll-nav roll-left tabLeft">
                <i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:" class="active menuTab" data-id="/sys/main">主页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right tabRight">
                <i class="fa fa-forward"></i>
            </button>
            <div class="btn-group roll-nav roll-right">
                <button class="dropdown J_tabClose" data-toggle="dropdown">
                                                                          页签操作<span class="caret"></span>
                </button>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                     <li><a class="tabCloseCurrent" href="javascript:void();">关闭当前</a></li>
                     <li><a class="tabCloseOther" href="javascript:void();">关闭其他</a></li>
					 <li><a class="tabCloseAll" href="javascript:void();">全部关闭</a></li>
					 <li><a class="tabMaxCurrent" href="javascript:void();">全屏显示</a></li>
                </ul>
            </div>
            <a href="#" class="roll-nav roll-right tabReload"><i class="fa fa-refresh"></i> 刷新</a>
        </div>
        
        <a id="ax_close_max" class="ax_close_max" href="#" title="关闭全屏"> <i class="fa fa-times-circle-o"></i> </a>

        <div class="row mainContent" id="content-main">
            <iframe class="RuoYi_iframe" name="iframe0" width="100%" height="100%" data-id="/sys/main"
                    src="/sys/main" frameborder="0" seamless></iframe>
        </div>
        <div class="footer" style="display:none;">
            <div class="pull-right">© 北京长城金点物联网科技股份有限公司 </div>
        </div>
    </div>
    <!--右侧部分结束-->
</div>
<!-- 全局js -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/ajax/libs/blockUI/jquery.blockUI.js"></script>
<script src="/ajax/libs/layer/layer.min.js"></script>
<script src="/goldenetbj/js/ry-ui.js?v=3.3.0"></script>
<script src="/goldenetbj/index.js"></script>
<script src="/ajax/libs/fullscreen/jquery.fullscreen.js"></script>
<script>
/*用户管理-重置密码*/
function resetPwd() {
    var url =  '/sys/user/profile/resetPwd';
    $.modal.open("重置密码", url, '800', '500');
}
</script>
</body>
</html>
