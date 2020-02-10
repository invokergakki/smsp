
var prefix =  "/sys/role/authUser";

$(function() {
    var options = {
        url: prefix + "/unallocatedList",
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
        showSearch: false,
        showRefresh: false,
        showToggle: false,
        showColumns: false,
        clickToSelect: true,
        rememberSelected: true,
        columns: [{
            field: 'state',
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
            }]
    };
    $.table.init(options);
});

function queryParams(params) {
    var search = $.table.queryParams(params);
    search.roleId = $("#roleId").val();
    return search;
}

/* 添加用户-选择用户-提交 */
function submitHandler() {
    var rows = $.table.selectFirstColumns();
    if (rows.length == 0) {
        $.modal.alertWarning("请至少选择一条记录");
        return;
    }
    var data = { "roleId": $("#roleId").val(), "userIds": rows.join() };
    $.operate.save(prefix + "/selectAll", data);
}