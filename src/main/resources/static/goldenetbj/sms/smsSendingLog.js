
var prefix = "/sys/sms";

$(function() {
    querySensorList();
});

function querySensorList() {
    var options = {
        url: prefix + "/smsSendingLoglist",
        sortName: "id",
        sortOrder: "asc",
        modalName: "短信发送日志",
        columns: [{
            checkbox: true,
            visible: false
        },
            {
                field: 'id',
                title: 'id',
                visible: false
            },
            {
                field: 'msgId',
                title: '短信ID',
                align: 'center'
            },
            {
                field: 'module',
                title: '标题',
                align: 'center'
            },
            {
                field: 'msg',
                align: 'left',
                width: '25%',
                title: '短信格式'
            },
            {
                field: 'params',
                align: 'left',
                width: '20%',
                title: '短信参数'
            },
            {
                field: 'responseMsg',
                title: '发送响应信息',
                align: 'center'
            },
            {
                field: 'status',
                title: '发送状态',
                align: 'center',
                formatter: function (value, row, index) {
                    return statusTools(row);
                }
            },
            {
                field: 'createBy',
                title: '发送人',
                align: 'center'
            },
            {
                field: 'responseTime',
                title: '发送时间',
                align: 'center',
                formatter: function (value, row, index) {
                    var crtTime = new Date(value);
                    return dateFtt("yyyy-MM-dd hh:mm:ss", crtTime);//直接调用公共JS里面的时间类处理的办法
                }
            }]
    };
    $.table.init(options);
}

/* 设备状态显示 */
function statusTools(row) {
    if (row.status == 1) {
        return '<span style="color: #1AB394;">成功</i> ';
    } else {
        return '<span style="color: #ED5565;">失败</i> ';
    }
}
//日期格式化
function dateFtt(fmt,date)
{ //author: meizz
    var o = {
        "M+" : date.getMonth()+1,                 //月份
        "d+" : date.getDate(),                    //日
        "h+" : date.getHours(),                   //小时
        "m+" : date.getMinutes(),                 //分
        "s+" : date.getSeconds(),                 //秒
        "q+" : Math.floor((date.getMonth()+3)/3), //季度
        "S"  : date.getMilliseconds()             //毫秒
    };
    if(/(y+)/.test(fmt))
        fmt=fmt.replace(RegExp.$1, (date.getFullYear()+"").substr(4 - RegExp.$1.length));
    for(var k in o)
        if(new RegExp("("+ k +")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
    return fmt;
}
