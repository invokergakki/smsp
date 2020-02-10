$(function() {
    var options = {
        code: "menuId",
        parentCode: "parentId",
        uniqueId: "menuId",
        expandAll: false,
        expandFirst: false,
        url: "/sys/menu/list",
        createUrl: "/sys/menu/add/{id}",
        updateUrl: "/sys/menu/edit/{id}",
        removeUrl:  "/sys/menu/remove/{id}",
        modalName: "菜单",
        columns: [{
            field: 'selectItem',
            radio: true
        },
            {
                title: '菜单名称',
                field: 'menuName',
                width: '20%',
                formatter: function(value, row, index) {
                    if ($.common.isEmpty(row.icon)) {
                        return row.menuName;
                    } else {
                        return '<i class="' + row.icon + '"></i> <span class="nav-label">' + row.menuName + '</span>';
                    }
                }
            },
            {
                field: 'orderNum',
                title: '排序',
                width: '10%',
                align: "left"
            },
            {
                field: 'url',
                title: '请求地址',
                width: '15%',
                align: "left"
            },
            {
                title: '类型',
                field: 'menuType',
                width: '10%',
                align: "left",
                formatter: function(value, item, index) {
                    if (item.menuType == 'M') {
                        return '<span class="label label-success">目录</span>';
                    }
                    else if (item.menuType == 'C') {
                        return '<span class="label label-primary">菜单</span>';
                    }
                    else if (item.menuType == 'F') {
                        return '<span class="label label-warning">按钮</span>';
                    }
                }
            },
            {
                field: 'visible',
                title: '可见',
                width: '10%',
                align: "left",
                formatter: function(value, row, index) {
                    if (value == 0) {
                        return '<span class="badge badge-primary">显示</span>';
                    } else if (value == 1) {
                        return '<span class="badge badge-danger">隐藏</span>';
                    }
                }
            },
            {
                title: '操作',
                width: '20%',
                align: "left",
                formatter: function(value, row, index) {
                    var actions = [];
                    actions.push('<a class="btn btn-success btn-xs " href="javascript:void(0)" onclick="$.operate.edit(\'' + row.menuId + '\')"><i class="fa fa-edit"></i>编辑</a> ');
                    actions.push('<a class="btn btn-info btn-xs " href="javascript:void(0)" onclick="$.operate.add(\'' + row.menuId + '\')"><i class="fa fa-plus"></i>新增</a> ');
                    actions.push('<a class="btn btn-danger btn-xs " href="javascript:void(0)" onclick="$.operate.remove(\'' + row.menuId + '\')"><i class="fa fa-trash"></i>删除</a>');
                    return actions.join('');
                }
            }]
    };
    $.treeTable.init(options);
});

