
var prefix = "/sys/sms/send";

$(function() {
    querySensorList();
});

function querySensorList() {
    var options = {
        url: prefix + "/list",
        createUrl: prefix + "/add",
        updateUrl: prefix + "/edit/{id}",
        removeUrl: prefix + "/remove",
        sortName: "id",
        sortOrder: "asc",
        modalName: "短信平台",
        columns: [{
            checkbox: true
        },
            {
                field: 'id',
                title: '平台ID',
                align: 'center',
                sortable: true
            },
            {
                field: 'account',
                title: '平台账号',
                align: 'center'
            },
            {
                field: 'password',
                title: '平台密码',
                align: 'center'
            },
            {
                field: 'smsVariableRequestUrl',
                align: 'center',
                title: '短信平台Url'
            },
            {
                field: 'status',
                title: '平台状态',
                align: 'center',
                formatter: function (value, row, index) {
                    return statusTools(row);
                }
            },
            {
                field: 'smsTemplateName',
                align: 'center',
                title: '短信模板'
            },
            {
                field: 'createBy',
                title: '创建人',
                align: 'center'
            },
            {
                field: 'createTime',
                title: '创建时间',
                align: 'center',
                formatter: function (value, row, index) {
                    var crtTime = new Date(value);
                    return dateFtt("yyyy-MM-dd hh:mm:ss", crtTime);//直接调用公共JS里面的时间类处理的办法
                }
            },
            {
                title: '操作',
                align: "center",
                formatter: function(value, row, index) {
                    var actions = [];
                    actions.push('<a class="btn btn-success btn-xs " href="javascript:void(0)" onclick="$.operate.edit(\'' + row.id + '\')"><i class="fa fa-edit"></i>编辑</a> ');
                    actions.push('<a class="btn btn-danger btn-xs " href="javascript:void(0)" onclick="$.operate.remove(\'' + row.id + '\')"><i class="fa fa-trash"></i>删除</a>');
                    return actions.join('');
                }
            }]
    };
    $.table.init(options);
}

/* 设备状态显示 */
function statusTools(row) {
    if (row.status == 0) {
        return '<i class=\"fa fa-toggle-off text-info fa-2x\" onclick="enable(\'' + row.id + '\')"></i> ';
    } else {
        return '<i class=\"fa fa-toggle-on text-info fa-2x\" onclick="disable(\'' + row.id + '\')"></i> ';
    }
}
/* 短信平台-停用 */
function disable(id) {
    $.modal.confirm("确认要停用短信平台吗？", function() {
        $.operate.post(prefix + "/changeSendStatus", { "id": id, "status": 0 });
    })
}
/* 用户管理启用 */
function enable(id) {
    $.modal.confirm("确认要启用短信平台吗？", function() {
        $.operate.post(prefix + "/changeSendStatus", { "id": id, "status": 1 });
    })
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

function doSubmit(index, layero){
    var tree = layero.find("iframe")[0].contentWindow.$._tree;
    if ($.tree.notAllowParents(tree)) {
        var body = layer.getChildFrame('body', index);
        $("#deptId").val(body.find('#treeId').val());
        $("#treeName").val(body.find('#treeName').val());
        layer.close(index);
    }
}