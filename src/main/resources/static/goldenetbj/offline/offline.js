var prefix = "/sys";

$(function () {
    var panehHidden = false;
    if ($(this).width() < 769) {
        panehHidden = true;
    }
    $('body').layout({initClosed: panehHidden, west__size: 185});
    queryWarningList();
});

function queryWarningList() {
    var options = {
        url: prefix + "/OfflineList",
        sortName: "sw.updateTime",
        sortOrder: "desc",
        modalName: "离线",
        columns: [
            {
                field: 'imei',
                title: '设备编号'
            },
            {
                field: 'imeiName',
                title: '设备名称'
            },
            {
                field: 'status',
                title: '设备状态',
                formatter: function (value) {
                    if (value == 1) {
                        return "正常";
                    } else {
                        return "停止";
                    }
                }
            },
            {
                field: 'faultTime',
                title: '离线时间',
                formatter: function (value, row, index) {
                    if (value == null) {
                        return null;
                    } else {
                        var crtTime = new Date(value);
                        return dateFtt("yyyy-MM-dd hh:mm:ss", crtTime);//直接调用公共JS里面的时间类处理的办法
                    }
                }
            },
            {
                field: 'restoreTime',
                title: '恢复时间',
                formatter: function (value, row, index) {
                    if (value == null) {
                        return null;
                    } else {
                        var crtTime = new Date(value);
                        return dateFtt("yyyy-MM-dd hh:mm:ss", crtTime);//直接调用公共JS里面的时间类处理的办法
                    }
                }
            }
        ]
    };
    $.table.init(options);
}


//日期格式化
function dateFtt(fmt, date) { //author: meizz
    var o = {
        "M+": date.getMonth() + 1,                 //月份
        "d+": date.getDate(),                    //日
        "h+": date.getHours(),                   //小时
        "m+": date.getMinutes(),                 //分
        "s+": date.getSeconds(),                 //秒
        "q+": Math.floor((date.getMonth() + 3) / 3), //季度
        "S": date.getMilliseconds()             //毫秒
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (date.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}