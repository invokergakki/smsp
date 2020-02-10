
var prefix = "/sys/sensor";

$(function() {
    var panehHidden = false;
    if ($(this).width() < 769) {
        panehHidden = true;
    }
    $('body').layout({ initClosed: panehHidden, west__size: 185 });
    querySensorList();
});

function querySensorList() {
    var options = {
        url: prefix + "/list",
        createUrl: prefix + "/add",
        updateUrl: prefix + "/edit/{id}",
        removeUrl: prefix + "/remove",
        exportUrl: prefix + "/export",
        importUrl: prefix + "/importData",
        importTemplateUrl: prefix + "/importTemplate",
        sortName: "id",
        sortOrder: "asc",
        modalName: "设备",
        columns: [{
            checkbox: true
        },
            {
                field: 'imei',
                title: '设备编号',
                align: 'center',
                sortable: true
            },
            {
                field: 'imeiName',
                title: '设备名称',
                align: 'center',
                sortable: true
            },
            {
                field: 'sensorLocation',
                align: 'center',
                title: '安装位置'
            },
            {
                field: 'deptName',
                align: 'center',
                title: '归属部门'
            },
            {
                field: 'state',
                title: '状态',
                align: 'center'
            },
            {
                field: 'sensorType',
                title: '设备通信类型',
                align: 'center',
                formatter: function (value, row, index) {
                    if(value=='0'){return '电信NBIOT'}
                    else if(value=='1'){return '移动NBIOT'}
                    else if(value=='2'){return 'LORA'}
                    else if(value=='3'){return 'GSM'}
                    else if(value=='4'){return 'WIFI'}
                    else{return '其他'}
                }
            },
            {
                field: 'runningState',
                title: '运行状态',
                align: 'center',
                formatter: function (value, row, index) {
                    return statusTools(row);
                }
            },
            {
                field: 'batteryLevel',
                align: 'center',
                title: '电量',
                formatter: function (value, row, index) {
                    if(value == null || value == ''){
                        return null;
                    }else{
                        return value+"%";
                    }
                }
            },
            {
                field: 'createTime',
                title: '安装时间',
                align: 'center',
                formatter: function (value, row, index) {
                    var crtTime = new Date(value);
                    return dateFtt("yyyy-MM-dd hh:mm:ss", crtTime);//直接调用公共JS里面的时间类处理的办法
                }
            },
            {
                title: '操作',
                align: 'center',
                formatter: function(value, row, index) {
                    var actions = [];
                    actions.push('<a class="btn btn-success btn-xs " href="javascript:void(0)" onclick="$.operate.editTab(\'' + row.imei + '\')"><i class="fa fa-edit"></i>编辑</a> ');
                    actions.push('<a class="btn btn-danger btn-xs " href="javascript:void(0)" onclick="$.operate.remove(\'' + row.imei + '\')"><i class="fa fa-remove"></i>删除</a> ');
                    return actions.join('');
                }
            }]
    };
    $.table.init(options);
}



/* 报警状态显示 */
function statusTools(row) {
    if (row.runningState == 0) {
        return '<span style="color: #1AB394;">运行</i> ';
    } else {
        return '<span style="color: #ED5565;">未运行</i> ';
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

function doSubmit(index, layero){
    var tree = layero.find("iframe")[0].contentWindow.$._tree;
    if ($.tree.notAllowParents(tree)) {
        var body = layer.getChildFrame('body', index);
        $("#deptId").val(body.find('#treeId').val());
        $("#treeName").val(body.find('#treeName').val());
        layer.close(index);
    }
}