var prefix = "/sys/dept";

$("#form-dept-edit").validate({
    onkeyup: false,
    rules:{
        deptName:{
            remote: {
                url: prefix + "/checkDeptNameUnique",
                type: "post",
                dataType: "json",
                data: {
                    "deptId": function() {
                        return $("#deptId").val();
                    },
                    "parentId": function() {
                        return $("input[name='parentId']").val();
                    },
                    "deptName": function() {
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
        $.operate.save(prefix + "/edit", $('#form-dept-edit').serialize());
    }
}

/*部门管理-修改-选择部门树*/
function selectDeptTree() {
    var deptId = $("#treeId").val();
    if(deptId > 0) {
        var options = {
            title: '部门选择',
            width: "380",
            url: prefix + "/selectDeptTree/" + $("#treeId").val(),
            callBack: doSubmit
        };
        $.modal.openOptions(options);
    } else {
        $.modal.alertError("父部门不能选择");
    }
}

function doSubmit(index, layero){
    var tree = layero.find("iframe")[0].contentWindow.$._tree;
    if ($.tree.notAllowLastLevel(tree)) {
        var body = layer.getChildFrame('body', index);
        $("#treeId").val(body.find('#treeId').val());
        $("#treeName").val(body.find('#treeName').val());
        layer.close(index);
    }
}