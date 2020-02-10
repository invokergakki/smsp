var prefix =  "/sys/dept";

$("#form-dept-add").validate({
    onkeyup: false,
    rules:{
        deptName:{
            remote: {
                url: prefix + "/checkDeptNameUnique",
                type: "post",
                dataType: "json",
                data: {
                    "parentId": function() {
                        return $("input[name='parentId']").val();
                    },
                    "deptName" : function() {
                        return $.common.trim($("#deptName").val());
                    }
                },
                dataFilter: function(data, type) {
                    return $.validate.unique(data);
                }
            }
        },
        orderNum:{
            digits:true
        },
        email:{
            email:true,
        },
        phone:{
            isPhone:true,
        },
    },
    messages: {
        "deptName": {
            remote: "部门已经存在"
        }
    },
    focusCleanup: true
});

function submitHandler() {
    if ($.validate.form()) {
        $.operate.save(prefix + "/add", $('#form-dept-add').serialize());
    }
}

/*部门管理-新增-选择父部门树*/
function selectDeptTree() {
    var options = {
        title: '部门选择',
        width: "380",
        url: prefix + "/selectDeptTree/" + $("#treeId").val(),
        callBack: doSubmit
    };
    $.modal.openOptions(options);
}

function doSubmit(index, layero){
    var body = layer.getChildFrame('body', index);
    $("#treeId").val(body.find('#treeId').val());
    $("#treeName").val(body.find('#treeName').val());
    layer.close(index);
}