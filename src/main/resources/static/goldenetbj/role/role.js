
var prefix = "/sys/role";


$(function() {
    var options = {
        url: prefix + "/list",
        createUrl: prefix + "/add",
        updateUrl: prefix + "/edit/{id}",
        removeUrl: prefix + "/remove",
        exportUrl: prefix + "/export",
        sortName: "roleSort",
        modalName: "角色",
        columns: [{
            checkbox: true
        },
            {
                field: 'roleId',
                title: '角色编号'
            },
            {
                field: 'roleName',
                title: '角色名称',
                sortable: true
            },
            {
                field: 'roleSort',
                title: '显示顺序',
                sortable: true
            },
            {
                field: 'status',
                title: '角色状态',
                sortable: true,
                formatter: function(value, row, index) {
                    if (value == 0) {
                        return '<span class="badge badge-primary">正常</span>';
                    } else if (value == 1) {
                        return '<span class="badge badge-danger">停用</span>';
                    }
                }
            },
            {
                field: 'createTime',
                title: '创建时间',
                sortable: true,
                formatter: function(value, row, index) {
                    var crtTime = new Date(value);
                    return dateFtt("yyyy-MM-dd hh:mm:ss",crtTime);//直接调用公共JS里面的时间类处理的办法
                }
            },
            {
                title: '操作',
                align: 'center',
                formatter: function(value, row, index) {
                    var actions = [];
                    actions.push('<a class="btn btn-success btn-xs " href="javascript:void(0)" onclick="$.operate.edit(\'' + row.roleId + '\')"><i class="fa fa-edit"></i>编辑</a> ');
                    actions.push('<a class="btn btn-danger btn-xs " href="javascript:void(0)" onclick="$.operate.remove(\'' + row.roleId + '\')"><i class="fa fa-remove"></i>删除</a> ');
                    return actions.join('');
                }
            }]
    };
    $.table.init(options);
});

/* 角色管理-分配数据权限 */
function authDataScope(roleId) {
    var url = prefix + '/authDataScope/' + roleId;
    $.modal.open("分配数据权限", url);
}

/* 角色管理-分配用户 */
function authUser(roleId) {
    var url = prefix + '/authUser/' + roleId;
    $.modal.openTab("分配用户", url);
}

/* 角色状态显示 */
function statusTools(row) {
    if (row.status == 1) {
        return '<i class=\"fa fa-toggle-off text-info fa-2x\" onclick="enable(\'' + row.roleId + '\')"></i> ';
    } else {
        return '<i class=\"fa fa-toggle-on text-info fa-2x\" onclick="disable(\'' + row.roleId + '\')"></i> ';
    }
}

/* 角色管理-停用 */
function disable(roleId) {
    $.modal.confirm("确认要停用角色吗？", function() {
        $.operate.post(prefix + "/changeStatus", { "roleId": roleId, "status": 1 });
    })
}

/* 角色管理启用 */
function enable(roleId) {
    $.modal.confirm("确认要启用角色吗？", function() {
        $.operate.post(prefix + "/changeStatus", { "roleId": roleId, "status": 0 });
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