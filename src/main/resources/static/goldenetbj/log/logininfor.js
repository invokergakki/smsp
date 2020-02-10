
var prefix = "/sys/log/logininfor";

$(function() {
    var options = {
        url: prefix + "/list",
        cleanUrl: prefix + "/clean",
        removeUrl: prefix + "/remove",
        exportUrl: prefix + "/export",
        sortName: "loginTime",
        sortOrder: "desc",
        modalName: "登录日志",
        escape: true,
        showPageGo: true,
        rememberSelected: true,
        columns: [{
            field: 'state',
            checkbox: true
        },
            {
                field: 'infoId',
                title: '访问编号'
            },
            {
                field: 'loginName',
                title: '登录名称',
                sortable: true
            },
            {
                field: 'ipaddr',
                title: '登录地址'
            },
            {
                field: 'status',
                title: '登录状态',
                align: 'center',
                formatter: function(value, row, index) {
                    if (value == 0) {
                        return '<span class="badge badge-primary">成功</span>';
                    } else if (value == 1) {
                        return '<span class="badge badge-danger">失败</span>';
                    }
                }
            },
            {
                field: 'msg',
                title: '操作信息'
            },
            {
                field: 'loginTime',
                title: '登录时间',
                sortable: true,
                formatter: function(value, row, index) {
                    var crtTime = new Date(value);
                    return dateFtt("yyyy-MM-dd hh:mm:ss",crtTime);//直接调用公共JS里面的时间类处理的办法
                }
            }]
    };
    $.table.init(options);
});
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