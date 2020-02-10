var prefix ="/sys/role/authUser";

$(function() {
    var options = {
        url: prefix + "/allocatedList",
        createUrl: prefix + "/add",
        updateUrl: prefix + "/edit/{id}",
        removeUrl: prefix + "/remove",
        exportUrl: prefix + "/export",
        importUrl: prefix + "/importData",
        importTemplateUrl: prefix + "/importTemplate",
        queryParams: queryParams,
        sortName: "createTime",
        sortOrder: "desc",
        modalName: "用户",
        columns: [{
            checkbox: true
        },
            {
                field: 'userId',
                title: '用户ID',
                visible: false,
            },
            {
                field: 'loginName',
                title: '登录名称',
                sortable: true
            },
            {
                field: 'userName',
                title: '用户名称'
            },
            {
                field: 'email',
                title: '邮箱'
            },
            {
                field: 'phonenumber',
                title: '手机'
            },
            {
                field: 'status',
                title: '用户状态',
                align: 'center'
            },
            {
                field: 'createTime',
                title: '创建时间',
                sortable: true
            },
            {
                title: '操作',
                align: 'center',
                formatter: function(value, row, index) {
                    var actions = [];
                    actions.push('<a class="btn btn-danger btn-xs " href="javascript:void(0)" onclick="cancelAuthUser(\'' + row.userId + '\')"><i class="fa fa-remove"></i>取消授权</a> ');
                    return actions.join('');
                }
            }]
    };
    $.table.init(options);
});

function queryParams(params) {
    var search = $.table.queryParams(params);
    search.roleId = $("#roleId").val();
    return search;
}

/* 分配用户-选择用户 */
function selectUser() {
    var url = prefix + '/selectUser/' + $("#roleId").val();
    $.modal.open("选择用户", url);
}

/* 分配用户-批量取消授权 */
function cancelAuthUserAll(userId) {
    var rows = $.table.selectFirstColumns();
    if (rows.length == 0) {
        $.modal.alertWarning("请至少选择一条记录");
        return;
    }
    $.modal.confirm("确认要删除选中的" + rows.length + "条数据吗?", function() {
        var data = { "roleId": $("#roleId").val(), "userIds": rows.join() };
        $.operate.submit(prefix + "/cancelAll", "post", "json", data);
    });
}

/* 分配用户-取消授权 */
function cancelAuthUser(userId) {
    $.modal.confirm("确认要取消该用户角色吗？", function() {
        $.operate.post(prefix + "/cancel", { "roleId": $("#roleId").val(), "userId": userId });
    })
}