var prefix = "/sys/sensor";

$("#form-sensor-add").validate({
    onkeyup: false,
    rules:{
        IMEI:{
            minlength: 1,
            maxlength: 255,
            remote: {
                url: prefix + "/checkMessageUnique",
                type: "post",
                dataType: "json",
                data: {
                    name : function() {
                        return $.common.trim($("#IMEI").val());
                    }
                },
                dataFilter: function(data, type) {
                    return $.validate.unique(data);
                }
            }
        },
        phone:{
            isPhone:true
        }
    },
    messages: {
        "IMEI": {
            remote: "编号已经存在"
        }
    },
    focusCleanup: true
});

function submitHandler() {
    if ($.validate.form()) {
        var data = $("#form-sensor-add").serializeArray();
        var status = $("input[id='status']").is(':checked') == true ? 0 : 1;
        var roleIds = $.form.selectCheckeds("role");
        data.push({"name": "status", "value": status});
        data.push({"name": "roleIds", "value": roleIds});
        $.operate.saveTab(prefix + "/add", data);
    }
}

/*用户管理-新增-选择部门树*/
function selectDeptTree() {
    var treeId = $("#treeId").val();
    var deptId = $.common.isEmpty(treeId) ? "100" : $("#treeId").val();
    var url = "/sys/dept/selectDeptTree/" + deptId;
    var options = {
        title: '选择部门',
        width: "380",
        url: "/sys/dept/selectDeptTree/" + deptId,
        callBack: doSubmit
    };
    $.modal.openOptions(options);
}

function doSubmit(index, layero){
    var tree = layero.find("iframe")[0].contentWindow.$._tree;
    if ($.tree.notAllowParents(tree)) {
        var body = layer.getChildFrame('body', index);
        $("#treeId").val(body.find('#treeId').val());
        $("#treeName").val(body.find('#treeName').val());
        layer.close(index);
    }
}

$(function () {
    initAddr();
});

function initAddr() {

    var sb_x = '116.413384';
    var sb_y = '39.910925';
    sb_x.value = "0";
    sb_y.value = "0";
    var map = document.getElementById("dituContent");
    if (map.style.display == "none") {
        map.style.display = "block";
        initMap();
    }
    if (map.style.display != "none") {
        initMap();
    }
}

function getAddr() {

    var sb_x = document.getElementById("XCoordinates");
    var sb_y = document.getElementById("YCoordinates");
    sb_x.value = "0";
    sb_y.value = "0";
    var map = document.getElementById("dituContent");
    if (map.style.display == "none") {
        map.style.display = "block";
        initMap();
    }
    if (map.style.display != "none") {
        initMap();
    }
}

//创建和初始化地图函数：
function initMap() {
    createMap(); //创建地图
    setMapEvent(); //设置地图事件
    var gc = new BMap.Geocoder();
    map.addEventListener("click", function (e) {
        map.clearOverlays();
        var pt = e.point;
        gc.getLocation(pt, function (rs) {
            var addComp = rs.addressComponents;
            var addr;
            addr = addComp.city + addComp.district + addComp.street + addComp.streetNumber;
            map.addOverlay(new BMap.Marker(pt));
            document.getElementById("sensorLocation").value = addr;
            document.getElementById("XCoordinates").value = pt.lng;
            document.getElementById("YCoordinates").value = pt.lat;
        });
    });
    var point = new BMap.Point("0", "0");
    map.centerAndZoom(point, 19);
    var marker = new BMap.Marker(point); // 创建标注
    map.addOverlay(marker);             // 将标注添加到地图中
}

//创建地图函数：
function createMap() {
    var map = new BMap.Map("dituContent"); //在百度地图容器中创建一个地图
    // 创建地址解析器实例
    var myGeo = new BMap.Geocoder();
    // 将地址解析结果显示在地图上,并调整地图视野
    map.centerAndZoom(new BMap.Point("0", "0"), 12);
    if (document.getElementById("XCoordinates").value == 0) {
        myGeo.getPoint(document.getElementById("city").value, function (point) {
            if (point) {
                map.centerAndZoom(point, 19);
                document.getElementById("sensorLocation").value = document.getElementById("city").value;
                document.getElementById("XCoordinates").value = point.lng;
                document.getElementById("YCoordinates").value = point.lat;
                var marker = new BMap.Marker(point); // 创建标注
                map.addOverlay(marker);             // 将标注添加到地图中
            }
        }, document.getElementById("city").value);
    }
    window.map = map; //将map变量存储在全局
}

//地图事件设置函数：
function setMapEvent() {
    map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
    map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
    map.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
    map.enableKeyboard(); //启用键盘上下左右键移动地图
}
initMap(); //创建和初始化地图


/*用户管理-新增-选择部门树*/
function selectDeptTree() {
    var treeId = $("#treeId").val();
    var deptId = $.common.isEmpty(treeId) ? "100" : $("#treeId").val();
    var url = "/sys/dept/selectDeptTree/" + deptId;
    var options = {
        title: '选择部门',
        width: "380",
        url: "/sys/dept/selectDeptTree/" + deptId,
        callBack: doSubmit
    };
    $.modal.openOptions(options);
}

function doSubmit(index, layero){
    var tree = layero.find("iframe")[0].contentWindow.$._tree;
    if ($.tree.notAllowParents(tree)) {
        var body = layer.getChildFrame('body', index);
        $("#treeId").val(body.find('#treeId').val());
        $("#treeName").val(body.find('#treeName').val());
        layer.close(index);
    }
}