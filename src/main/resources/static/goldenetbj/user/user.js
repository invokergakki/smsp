
var prefix = "/sys/user";

$(function() {
    var panehHidden = false;
    if ($(this).width() < 769) {
        panehHidden = true;
    }
    $('body').layout({ initClosed: panehHidden, west__size: 185 });
    queryUserList();
    queryDeptTree();
});

function queryUserList() {
    var options = {
        url: prefix + "/list",
        createUrl: prefix + "/add",
        updateUrl: prefix + "/edit/{id}",
        removeUrl: prefix + "/remove",
        exportUrl: prefix + "/export",
        importUrl: prefix + "/importData",
        importTemplateUrl: prefix + "/importTemplate",
        sortName: "userId",
        sortOrder: "asc",
        modalName: "用户",
        columns: [{
            checkbox: true
        },
            {
                field: 'userId',
                title: '用户ID'
            },
            {
                field: 'loginName',
                title: '用户名称',
                sortable: true
            },
            {
                field: 'userName',
                title: '登录名称'
            },
            {
                field: 'salt',
                title: '部门'
            },
            {
                field: 'email',
                title: '邮箱',
                visible: false
            },
            {
                field: 'phonenumber',
                title: '手机'
            },
            {
                visible: 'status',
                title: '用户状态',
                align: 'center',
                formatter: function (value, row, index) {
                    return statusTools(row);
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
                    actions.push('<a class="btn btn-success btn-xs " href="javascript:void(0)" onclick="$.operate.editTab(\'' + row.userId + '\')"><i class="fa fa-edit"></i>编辑</a> ');
                    actions.push('<a class="btn btn-danger btn-xs " href="javascript:void(0)" onclick="$.operate.remove(\'' + row.userId + '\')"><i class="fa fa-remove"></i>删除</a> ');
                    actions.push('<a class="btn btn-info btn-xs " href="javascript:void(0)" onclick="resetPwd(\'' + row.userId + '\')"><i class="fa fa-key"></i>重置</a>');
                    return actions.join('');
                }
            }]
    };
    $.table.init(options);
}

function queryDeptTree()
{
    var url =  "/sys/dept/treeData";
    var options = {
        url: url,
        expandLevel: 2,
        onClick : zOnClick
    };
    $.tree.init(options);

    function zOnClick(event, treeId, treeNode) {
        $("#deptId").val(treeNode.id);
        $("#parentId").val(treeNode.pId);
        $.table.search();
    }
}

$('#btnExpand').click(function() {
    $._tree.expandAll(true);
    $(this).hide();
    $('#btnCollapse').show();
});

$('#btnCollapse').click(function() {
    $._tree.expandAll(false);
    $(this).hide();
    $('#btnExpand').show();
});

$('#btnRefresh').click(function() {
    queryDeptTree();
});

/* 用户管理-部门 */
function dept() {
    var url = "/sys/dept/dept";
    createMenuItem(url, "部门管理");
}

/* 用户管理-重置密码 */
function resetPwd(userId) {
    var url = prefix + '/resetPwd/' + userId;
    $.modal.open("重置密码", url, '800', '300');
}

/* 用户状态显示 */
function statusTools(row) {
    if (row.status == 1) {
        return '<i class=\"fa fa-toggle-off text-info fa-2x\" onclick="enable(\'' + row.userId + '\')"></i> ';
    } else {
        return '<i class=\"fa fa-toggle-on text-info fa-2x\" onclick="disable(\'' + row.userId + '\')"></i> ';
    }
}

/* 用户管理-停用 */
function disable(userId) {
    if(userId ==1){
        $.modal.confirm("超级管理员不能停用", function() {
        });
        return false;
    }
    $.modal.confirm("确认要停用用户吗？", function() {
        $.operate.post(prefix + "/changeStatus", { "userId": userId, "status": 1 });
    })
}

/* 用户管理启用 */
function enable(userId) {
    if(userId ==1){
        $.modal.confirm("超级管理员不能停用", function() {
        });
        return false;
    }
    $.modal.confirm("确认要启用用户吗？", function() {
        $.operate.post(prefix + "/changeStatus", { "userId": userId, "status": 0 });
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