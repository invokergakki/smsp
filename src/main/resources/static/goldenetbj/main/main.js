
// 百度地图API功能
map = new BMap.Map("allmap");
map.setMapStyle({style: 'dark'});
map.addControl(new BMap.MapTypeControl());

var info =[];
alarm();
if (true) {

   map.centerAndZoom(new BMap.Point("115.880569", "39.332335"), 8);

} else {

    // 创建地址解析器实例
    var myGeo = new BMap.Geocoder();
    // 将地址解析结果显示在地图上,并调整地图视野
    myGeo.getPoint("全国", function (point) {
        if (point) {
            map.centerAndZoom(point, 8);
        }
    }, "全国");
}


var alarmInfo1 = info.split(',end');
var myarr = []; //先声明一维
for (var i = 0; i < alarmInfo1.length; i++) {
    myarr[i] = alarmInfo1[i].split(',');
}
var  data_info = myarr;


var opts = {
    width: 310,     // 信息窗口宽度
    height: 210,     // 信息窗口高度
    title: "[信息窗口]", // 信息窗口标题
    enableMessage: true//设置允许信息窗发送短息
};
for (var i = 0; i < data_info.length; i++) {

    if (data_info[i][0] != 0 && data_info[i][1] != 0) {

        var myIcon = new BMap.Icon(data_info[i][3], new BMap.Size(33, 33));
        var marker = new BMap.Marker(new BMap.Point(data_info[i][0], data_info[i][1]), {icon: myIcon});  // 创建标注
        var content = data_info[i][2];
        map.addOverlay(marker);               // 将标注添加到地图中
        addClickHandler(content, marker);
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
    }
}
setMapEvent();

function addClickHandler(content, marker) {
    marker.addEventListener("click", function (e) {
            openInfo(content, e)
        }
    );
}

function openInfo(content, e) {
    var p = e.target;
    var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
    var infoWindow = new BMap.InfoWindow(content, opts);  // 创建信息窗口对象
    map.openInfoWindow(infoWindow, point); //开启信息窗口

}

//地图事件设置函数：
function setMapEvent() {
    map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
    map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
    map.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
    map.enableKeyboard(); //启用键盘上下左右键移动地图

}

function alarm() {
    $.ajax({
        cache : true,
        type : "GET",
        url :  "/sys/sensor/alarm",
        async : false,
        success : function(data) {
            info = data;
        }
    });
}
