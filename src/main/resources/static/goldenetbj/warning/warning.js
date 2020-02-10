
var prefix = "/sys";

$(function() {
    var panehHidden = false;
    if ($(this).width() < 769) {
        panehHidden = true;
    }
    $('body').layout({ initClosed: panehHidden, west__size: 185 });
    queryWarningList();
});

function queryWarningList() {
    var options = {
        url: prefix + "/WaringList",
        batchUpdateUrl: prefix + "/warning/changeStatus",
        sortName: "sw.updateTime",
        sortOrder: "desc",
        modalName: "报警",
        columns: [{
            checkbox: true
        },
            {
                field: 'id',
                title: '报警id',
                visible: false,
            },
            {
                field: 'facilityCode',
                title: '设备编号'
            },
            {
                field: 'facilityName',
                title: '设备名称',
                formatter: function (value, row, index) {
                    return facilityNameTools(row);
                }
            },
            {
                field: 'warningType',
                title: '报警类型'
            },
            {
                field: 'warningCode',
                title: '报警code码',
                visible: false,
            },
            {
                field: 'warningDis',
                title: '处理说明',
                formatter: function (value, row, index) {
                    return warningDisTools(row);
                }
            },
            {
                field: 'deptName',
                title: '所属单位'
            },
            {
                field: 'sensorLocation',
                title: '安装位置'
            },
            {
                field: 'count',
                title: '报警次数',
                formatter: function (value, row, index) {
                    return countTools(row);
                }
            },
            // {
            //     field: 'createTime',
            //     title: '首次报警时间',
            // },
            {
                field: 'updateTime',
                title: '最近报警时间',
                formatter: function(value, row, index) {
                    var updateTime = new Date(value);
                    return dateFtt("yyyy-MM-dd hh:mm:ss",updateTime);//直接调用公共JS里面的时间类处理的办法
                }
            },
            {
                visible: 'status',
                title: '处理状态',
                align: 'center',
                formatter: function (value, row, index) {
                    return statusTools(row);
                }
            }
            // , {
            //     title: '操作',
            //     align: 'center',
            //     formatter: function(value, row, index) {
            //         var actions = [];
            //         actions.push('<a class="btn btn-success btn-xs " href="javascript:void(0)" onclick="$.operate.editTab(\'' + row.userId + '\')"><i class="fa fa-edit"></i>编辑</a> ');
            //         actions.push('<a class="btn btn-danger btn-xs " href="javascript:void(0)" onclick="$.operate.remove(\'' + row.userId + '\')"><i class="fa fa-remove"></i>删除</a> ');
            //         return actions.join('');
            //     }
            // }
            ]
    };
    $.table.init(options);
}

/* 处理说明 */
function warningDisTools(row) {
    if (null != row.warningDis && row.warningDis.length > 15) {
        return '<span style="color:deepskyblue" onclick=$.modal.msg("'+row.warningDis+'")>'+row.warningDis.substring(0,6)+'***'+row.warningDis.substring(row.warningDis.length-6,row.warningDis.length)+'</span> ';
    } else {
        return row.warningDis;
    }
}

/* 报警次数 */
function countTools(row) {
    if (null != row.count && row.count > 0) {
        return '<span style="color:deepskyblue" onclick=$.modal.open("数据展示","/sys/warningLog?facilityCode='+row.facilityCode+'&warningCode='+row.warningCode+'")>'+row.count+'</span> ';
    } else {
        return row.count;
    }
}

/* 设备名称显示 */
function facilityNameTools(row) {
    if ("" == row.facilityName || null == row.facilityName) {
        return '<span style="color:#ED5565">设备未注册</span> ';
    } else {
        return row.facilityName;
    }
}

/* 报警状态显示 */
function statusTools(row) {
    if (row.status == "1") {
        return '<span style="color: #1AB394;">已处理</i> ';
    } else {
        return '<span style="color: #ED5565;">未处理</i> ';
    }
}

/* 报警管理-未处理 状态：1：已处理，0：未处理 */
function disable(id) {
    $.modal.confirm("确定置为未处理状态吗？", function() {
        $.operate.post(prefix + "/warning/changeStatus", { "id": id, "status": 0});
    })
}

/* 报警管理已处理 */
function enable(id) {
    $.modal.confirm("处理说明：<input type='text' id='warning_dis' maxlength='200'><br>确定置为已处理状态吗？", function() {
        var warning_dis = $("#warning_dis").val();
        $.operate.post(prefix + "/warning/changeStatus", { "id": id, "status": 1 ,"warningDis":warning_dis});
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