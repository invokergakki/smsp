
var prefix ="/sys/log/operlog";

$(function() {
    var options = {
        url: prefix + "/list",
        cleanUrl: prefix + "/clean",
        detailUrl: prefix + "/detail/{id}",
        removeUrl: prefix + "/remove",
        exportUrl: prefix + "/export",
        sortName: "operTime",
        sortOrder: "desc",
        modalName: "操作日志",
        escape: true,
        showPageGo: true,
        rememberSelected: true,
        columns: [{
            field: 'state',
            checkbox: true
        },
            {
                field: 'operId',
                title: '日志编号'
            },
            {
                field: 'title',
                title: '系统模块'
            },
            {
                field: 'businessType',
                title: '操作类型',
                align: 'center',
                formatter: function(value, row, index) {
                    //0其它 1新增 2修改 3删除
                    if (value == 1) {
                        return '<span class="badge badge-info">新增</span>';
                    } else if (value == 2) {
                        return '<span class="badge badge-info">修改</span>';
                    } else if (value == 3) {
                        return '<span class="badge badge-danger">删除</span>';
                    } else {
                        return '<span class="badge badge-info">其他</span>';
                    }
                }
            },
            {
                field: 'operName',
                title: '操作人员',
                sortable: true
            },
            {
                field: 'deptName',
                title: '部门名称'
            },
            {
                field: 'operIp',
                title: '主机'
            },
            {
                field: 'status',
                title: '操作状态',
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
                field: 'operTime',
                title: '操作时间',
                sortable: true,
                formatter: function(value, row, index) {
                    var crtTime = new Date(value);
                    return dateFtt("yyyy-MM-dd hh:mm:ss",crtTime);//直接调用公共JS里面的时间类处理的办法
                }
            } ]
    };
    $.table.init(options);
});

function searchPre() {
    var data = {};
    data.businessTypes = $.common.join($('#businessTypes').selectpicker('val'));
    $.table.search('operlog-form', data);
}

function resetPre() {
    $.form.reset();
    $("#businessTypes").selectpicker('refresh');
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