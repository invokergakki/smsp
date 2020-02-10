<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="/goldenetbj/main/new/bootstrap.min.css" rel="stylesheet"/>
    <link href="/goldenetbj/main/new/font-awesome.min.css" rel="stylesheet"/>
    <link href="/goldenetbj/main/new/fullcalendar.css" rel="stylesheet"/>
    <link href="/goldenetbj/main/new/index_bootstrap-responsive.min.css" rel="stylesheet"/>
    <link href="/goldenetbj/main/new/index_matrix-style.css" rel="stylesheet"/>
    <link href="/goldenetbj/main/new/jquery.gritter.css" rel="stylesheet"/>
    <link href="/goldenetbj/main/new/matrix-media.css" rel="stylesheet"/>
    <link href="/goldenetbj/main/new/styles(1).css" rel="stylesheet"/>
    <link href="/goldenetbj/main/new/styles(2).css" rel="stylesheet"/>
    <link href="/goldenetbj/main/new/styles.css" rel="stylesheet"/>
</head>
<body style="margin-left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px;">
<title>
    物联网消防平台
</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript" src="/goldenetbj/main/api"></script>
<script type="text/javascript" src="/goldenetbj/main/getscript"></script>
<form method="post" action="" id="form1">
    <div class="aspNetHidden">
        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="Timer999" />
        <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMzgzMDkyNTA1ZGQy1/YGWKelMUbc/H6VOpiAIfo966cKwEh9R3Xg8e7o6Q==" />
    </div>
    <script type="text/javascript">
        //<![CDATA[
        var theForm = document.forms['form1'];
        if (!theForm) {
            theForm = document.form1;
        }
        function __doPostBack(eventTarget, eventArgument) {
            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;
                theForm.submit();
            }
        }
        //]]>
    </script>

    <div class="aspNetHidden">
        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="B2654881" />
    </div>
    <div style="height: 100%;">
        <div id="left" style="width:80%; float:left">
            <div id="allmap" style=" overflow: hidden; position: relative; z-index: 0; background-color: rgb(202,202,202); color: rgb(183,189,188); text-align: left;">
                <div style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(&quot;http://api0.map.bdimg.com/images/openhand.cur&quot;) 8 8, default;">
                    <div class="BMap_mask" style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; user-select: none; width: 1074px; height: 802px;"></div>
                    <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;">
                        <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div>
                        <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;">
                            <span class="BMap_Marker BMap_noprint" unselectable="on"   style="position: absolute; padding:
                            0px; margin: 0px; border: 0px; cursor: pointer; background: url(&quot;http://api0.map.bdimg.com/images/blank.gif&quot;);
                            width: 33px; height: 33px; left: 521px; top: 377px; z-index: -5729612;" title=""></span>
                            <span class="BMap_Marker BMap_noprint" unselectable="on"  style="position: absolute; padding:
                            0px; margin: 0px; border: 0px; cursor: pointer; background: url(&quot;http://api0.map.bdimg.com/images/blank.gif&quot;);
                            width: 18px; height: 18px; left: 488px; top: 362px; z-index: 19000000; user-select: none; display:
                            none;" title=""></span>
                        </div>
                        <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div>
                        <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;">
                            <label class="BMapLabel" unselectable="on" style="position: absolute; display: none; cursor: inherit; background-color: rgb(190, 190, 190); border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font: 12px arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190);">shadow</label>
                            <label class="BMapLabel" unselectable="on" style="position: absolute; display: none; cursor: inherit; background-color: rgb(255, 255, 225); border: 1px solid rgb(140, 140, 140); padding: 1px; white-space: nowrap; font: 12px arial, sans-serif; z-index: 80; user-select: none; color: rgb(185,74,51);">点击可查看详情</label>
                        </div>
                        <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;">
       <span class="BMap_Marker" unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 521px; top: 377px; z-index: -5729612;">
        <div style="position: absolute; margin: 0px; padding: 0px; width: 33px; height: 33px; overflow: hidden; left: 0px; top: -1px;">
         <img src="../img/alarm.png" style="display: block; border:none;margin-left:0px; margin-top:0px; " />
        </div></span> <span class="BMap_Marker" unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 488px; top: 362px; z-index: 19000000; display: none;">
            <div style="position: absolute; margin: 0px; padding: 0px; width: 18px; height: 18px; overflow: hidden;">
         <img src="../img/spotmkrs.png" style="display: block; border:none;margin-left:-166px; margin-top:0px; " />
        </div>
             </span>
                        </div>
                        <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"></div>
                        <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div>
                        <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"></div>
                    </div>
                    <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;">
                        <div style="position: absolute; overflow: visible; z-index: -100; left: 537px; top: 401px; display: block; transform: translate3d(0px, 0px, 0px);">
                            <img src="/goldenetbj/main/tile" style="position: absolute; border: none; width: 256px; height: 256px; left: -2px; top: -221px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(1)" style="position: absolute; border: none; width: 256px; height: 256px; left: -258px; top: -221px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(2)" style="position: absolute; border: none; width: 256px; height: 256px; left: 254px; top: -221px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(3)" style="position: absolute; border: none; width: 256px; height: 256px; left: -2px; top: 35px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(4)" style="position: absolute; border: none; width: 256px; height: 256px; left: -2px; top: -477px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(5)" style="position: absolute; border: none; width: 256px; height: 256px; left: -514px; top: -221px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(6)" style="position: absolute; border: none; width: 256px; height: 256px; left: 510px; top: -221px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(7)" style="position: absolute; border: none; width: 256px; height: 256px; left: -258px; top: 35px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(8)" style="position: absolute; border: none; width: 256px; height: 256px; left: -258px; top: -477px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(9)" style="position: absolute; border: none; width: 256px; height: 256px; left: 254px; top: 35px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(10)" style="position: absolute; border: none; width: 256px; height: 256px; left: 254px; top: -477px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(11)" style="position: absolute; border: none; width: 256px; height: 256px; left: -2px; top: 291px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(12)" style="position: absolute; border: none; width: 256px; height: 256px; left: -770px; top: -221px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(13)" style="position: absolute; border: none; width: 256px; height: 256px; left: -514px; top: 35px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(14)" style="position: absolute; border: none; width: 256px; height: 256px; left: -514px; top: -477px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(15)" style="position: absolute; border: none; width: 256px; height: 256px; left: 510px; top: 35px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(16)" style="position: absolute; border: none; width: 256px; height: 256px; left: 510px; top: -477px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(17)" style="position: absolute; border: none; width: 256px; height: 256px; left: -258px; top: 291px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(18)" style="position: absolute; border: none; width: 256px; height: 256px; left: 254px; top: 291px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(19)" style="position: absolute; border: none; width: 256px; height: 256px; left: -770px; top: 35px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(20)" style="position: absolute; border: none; width: 256px; height: 256px; left: -770px; top: -477px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(21)" style="position: absolute; border: none; width: 256px; height: 256px; left: -514px; top: 291px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(22)" style="position: absolute; border: none; width: 256px; height: 256px; left: 510px; top: 291px; max-width: none; opacity: 1;" />
                            <img src="/goldenetbj/main/tile(23)" style="position: absolute; border: none; width: 256px; height: 256px; left: -770px; top: 291px; max-width: none; opacity: 1;" />
                        </div>
                    </div>
                    <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none;">
                        <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 0; display: none;"></div>
                        <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 10; display: none;"></div>
                    </div>
                    <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div>
                </div>
                <div class="pano_close" title="退出全景" style="z-index: 1201; display: none;"></div>
                <a class="pano_pc_indoor_exit" title="退出室内景" style="z-index: 1201; display: none;"><span style="float:right;margin-right:12px;">出口</span></a>
                <div class=" anchorBL" style="height: 32px; position: absolute; z-index: 30; text-size-adjust: none; bottom: 20px; right: auto; top: auto; left: 1px;">
                    <a title="到百度地图查看此区域" target="_blank" href="http://map.baidu.com/?sr=1" style="outline: none;"><img style="border:none;width:77px;height:32px" src="../goldenetbj/main/copyright_logo.png" /></a>
                </div>
                <div id="zoomer" style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:url(http://api0.map.bdimg.com/images/openhand.cur) 8 8,default">
                    <div class="BMap_zoomer" style="top:0;left:0;"></div>
                    <div class="BMap_zoomer" style="top:0;right:0;"></div>
                    <div class="BMap_zoomer" style="bottom:0;left:0;"></div>
                    <div class="BMap_zoomer" style="bottom:0;right:0;"></div>
                </div>
                <div unselectable="on" class=" BMap_noprint anchorTR" style="bottom: auto; right: 10px; top: 10px; left: auto; white-space: nowrap; cursor: pointer; position: absolute; z-index: 10; text-size-adjust: none;">
                    <div style="float: left;">
                        <div title="显示普通地图" style="box-shadow: rgba(0, 0, 0, 0.35) 2px 2px 3px; border-left: 1px solid rgb(139, 164, 220); border-top: 1px solid rgb(139, 164, 220); border-bottom: 1px solid rgb(139, 164, 220); background: rgb(142, 168, 224); padding: 2px 6px; font: bold 12px/1.3em arial, sans-serif; text-align: center; white-space: nowrap; border-radius: 3px 0px 0px 3px; color: rgb(255, 255, 255);">
                            地图
                        </div>
                    </div>
                    <div style="float: left;">
                        <div title="显示卫星影像" style="box-shadow: rgba(0, 0, 0, 0.35) 2px 2px 3px; border-left: 1px solid rgb(139, 164, 220); border-top: 1px solid rgb(139, 164, 220); border-bottom: 1px solid rgb(139, 164, 220); background: rgb(255, 255, 255); padding: 2px 6px; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 12px; line-height: 1.3em; font-family: arial, sans-serif; text-align: center; white-space: nowrap; color: rgb(0, 0, 0);">
                            卫星
                        </div>
                        <div style="position: absolute; top: 22px; left: 37px; z-index: -1; display: none;">
                            <div title="显示带有街道的卫星影像" style="border-right:1px solid #8ba4dc;border-bottom:1px solid #8ba4dc;border-left:1px solid #8ba4dc;background:white;font:12px arial,sans-serif;padding:0 8px 0 6px;line-height:1.6em;box-shadow:2px 2px 3px rgba(0, 0, 0, 0.35)">
                                <span checked="checked"  class="BMap_checkbox"></span>
                                <label style="vertical-align: middle; cursor: pointer;">混合</label>
                            </div>
                        </div>
                    </div>
                    <div style="float: left;">
                        <div title="显示三维地图" style="box-shadow: rgba(0, 0, 0, 0.35) 2px 2px 3px; border-width: 1px; border-style: solid; border-color: rgb(139, 164, 220); background: rgb(255, 255, 255); padding: 2px 6px; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 12px; line-height: 1.3em; font-family: arial, sans-serif; text-align: center; white-space: nowrap; border-radius: 0px 3px 3px 0px; color: rgb(0, 0, 0);">
                            三维
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="middle"  style="width:2%;float:left;margin-top: 240px;">
            <input id="commandStatus" name="commandStatus"   type="hidden"  value="1"/>
            <a id="turnOffClick" onclick="commandStatus()" style="color:#fff;font-size:45px;"><img src="../img/right_arrow.png"> </a>
            <a id="turnOnClick" onclick="commandStatus()" style="color:#fff;font-size:45px;display: none;"><img src="../img/left_arrow.png"></a>
<%--            <div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="../img/left_arrow.png" ></div>--%>
        </div>
         <div id="right"  style="width:18%;float:left; background: #2E363F;">
             <div>
                 <ul class="quick-actions" style="margin-right: 0px; margin-top:25px;margin-left: 10px;">
                     <li class="bg_lo" style="width: 45%;"> <a > ${warningNum.callNum}个 <br> 报警 </a> </li>
                     <li class="bg_lg" style="width: 45%;margin-right: 2px;"> <a > ${warningNum.faultNum}个  <br> 故障 </a> </li>
                     <li class="bg_lb" style="width: 45%;"> <a>  ${warningNum.normalNum}个 <br> 正常 </a> </li>
                     <li class="bg_lo" style="width: 45%;">  <a> ${warningNum.lowtensionNum}个 <br> 低压  </a> </li>
                     <li class="bg_lg" style="width: 45%;">  <a> ${warningNum.onlineNum}个 <br>  在线  </a>  </li>
                     <li class="bg_ly" style="width: 45%;">  <a> ${warningNum.teardownNum}个  <br>   拆卸 </a> </li>
                 </ul>
             </div>
             <div style="margin-left: 10px; margin-right: 10px;">
                 <div id="UpdatePanel2">
                     <table class="dxgvDisabled_Soft_Orange" id="ASPxGridView2" style="width:100%;border-collapse:separate;">
                         <tr id="ASPxGridView2_col1" class="dxgvHeader_Soft_Orange" onmousedown="ASPx.GHeaderMouseDown(&#39;ASPxGridView2&#39;, this, event);" style="height:30px;text-align:Center;border-top-width:0px;border-left-width:0px;">
                              <td style="text-align:Center;">设备名</td>
                              <td style="text-align:Center;">操作</td>
                          </tr>
                         <c:if test="${empty warning}">
                             <tr id="ASPxGridView2_DXEmptyRow" class="dxgvEmptyDataRow_Soft_Orange">
                                 <td class="dxgv" colspan="3" style="border-bottom-width:0px;">
                                     <div>  No data to display  </div>
                                 </td>
                             </tr>
                         </c:if>
                         <c:if test="${not empty warning}">
                             <c:forEach items="${warning}" var="warning">
                                 <tr  class="dxgvControl_Soft_Orange"  style="height:30px;text-align:Center;border-collapse:separate;">
                                     <td ><span class="dx-vam">${warning.facilityName}</span></td>
                                     <td ><input type="button" style="width: 100px;height: 30px;background-color: #a1d762;" value="设备处理" onclick="updateWarning(${warning.id})"/> </td>
                                 </tr>
                             </c:forEach>
                         </c:if>
                     </table>
                 </div>
             </div>
         </div>
    </div>

    <div id="UpdatePanel1" style="display:none;">
        <span id="Timer999" style="visibility:hidden;display:none;"></span>
    </div>
    <script type="text/javascript">
        autoDivSize();

        function autoDivSize() { //函数：获取尺寸
            // 获取窗口宽度
            if (window.innerWidth) {
                winWidth = window.innerWidth;

            } else if ((document.body) && (document.body.clientWidth)) {
                winWidth = document.body.clientWidth;

            }
            // 获取窗口高度
            if (window.innerHeight) {
                winHeight = window.innerHeight;

            } else if ((document.body) && (document.body.clientHeight)) {
                winHeight = document.body.clientHeight;

            }
            // 通过深入 Document 内部对 body 进行检测，获取窗口大小
            if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth) {
                winHeight = document.documentElement.clientHeight;
                winWidth = document.documentElement.clientWidth;

            }
            //DIV高度为浏览器窗口高度 的60%
            document.getElementById("allmap").style.height = (winHeight - 0) + "px";

        }

        window.onresize = autoDivSize; //浏览器窗口发生变化时同时变化DIV高度


        function updateWarning(ids) {
            $.modal.confirm("<span>处理说明：</span style='float: left;'><textarea id='warning_dis' maxlength='200' style='margin: 0px; height: 85px; width: 263px;'></textarea>" +
                "<br>确定将选中的<span style='color: #ED5565;'>更改处理状态吗？", function() {
                var url = "/sys/warning/changeStatus";
                var warning_dis = $("#warning_dis").val();
                var data = { "ids": ids,"warningDis":warning_dis};
                $.operate.submit(url, "post", "json", data);
                var formdata = new FormData();
                formdata.append("ids", ids);
                formdata.append("warningDis", warning_dis);
                $.ajax({
                    url: "/sys/warning/changeStatus",
                    data: formdata,
                    type: "post",
                    processData: false,
                    contentType: false,
                    success: function(result) {
                        window.location.reload();
                    }
                })
            });
        }
        function commandStatus(){

            var a=document.getElementById("commandStatus").value;
            if(a==1){
                document.getElementById("right").style.display = "none"//不显示
                document.getElementById("turnOffClick").style.display = "none"//不显示
                document.getElementById("turnOnClick").style.display = "block"//显示
                document.getElementById('commandStatus').value='2';
                document.getElementById('left').style.width="98%";
            }else{
                document.getElementById("right").style.display = "block"//显示
                document.getElementById("turnOffClick").style.display = "block"//不显示
                document.getElementById("turnOnClick").style.display = "none"//显示
                document.getElementById('commandStatus').value='1';
                document.getElementById('left').style.width="80%";
            }
        }

    </script>
</form>
<%@ include file="sys/include.jsp"%>
<script src="/goldenetbj/main/main.js" ></script>
</body>
</html>