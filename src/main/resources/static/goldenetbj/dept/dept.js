var datas = 'sys_normal_disable';
var prefix = "/sys/dept"

$(function() {
    var options = {
        code: "deptId",
        parentCode: "parentId",
        uniqueId: "deptId",
        url: prefix + "/list",
        createUrl: prefix + "/add/{id}",
        updateUrl: prefix + "/edit/{id}",
        removeUrl: prefix + "/remove/{id}",
        modalName: "部门",
        columns: [{
            field: 'selectItem',
            radio: true
        },
            {
                field: 'deptName',
                title: '部门名称',
                align: "left"
            },
            {
                field: 'orderNum',
                title: '排序',
                align: "left"
            },
            {
                field: 'status',
                title: '状态',
                align: "left",
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
                align: "left",
                formatter: function(value, row, index) {
                    var crtTime = new Date(value);
                    return dateFtt("yyyy-MM-dd hh:mm:ss",crtTime);//直接调用公共JS里面的时间类处理的办法
                }
            },
            {
                title: '操作',
                align: 'left',
                formatter: function(value, row, index) {
                        var actions = [];
                        actions.push('<a class="btn btn-success btn-xs" href="javascript:void(0)" onclick="$.operate.edit(\'' + row.deptId + '\')"><i class="fa fa-edit"></i>编辑</a> ');
                        actions.push('<a class="btn btn-info  btn-xs" href="javascript:void(0)" onclick="$.operate.add(\'' + row.deptId + '\')"><i class="fa fa-plus"></i>新增</a> ');
                        actions.push('<a class="btn btn-danger btn-xs" href="javascript:void(0)" onclick="$.operate.remove(\'' + row.deptId + '\')"><i class="fa fa-trash"></i>删除</a>');
                        return actions.join('');
                }
            }]
    };
    $.treeTable.init(options);
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