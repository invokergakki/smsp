var prefix = "/sys/user";

$("#form-user-edit").validate({
    onkeyup: false,
    rules:{
        email:{
            email:true,
            remote: {
                url: prefix + "/checkEmailUnique",
                type: "post",
                dataType: "json",
                data: {
                    "userId": function() {
                        return $("#userId").val();
                    },
                    "email": function() {
                        return $.common.trim($("#email").val());
                    }
                },
                dataFilter: function (data, type) {
                    return $.validate.unique(data);
                }
            }
        },
        phonenumber:{
            isPhone:true,
            remote: {
                url: prefix + "/checkPhoneUnique",
                type: "post",
                dataType: "json",
                data: {
                    "userId": function() {
                        return $("#userId").val();
                    },
                    "phonenumber": function() {
                        return $.common.trim($("#phonenumber").val());
                    }
                },
                dataFilter: function (data, type) {
                    return $.validate.unique(data);
                }
            }
        },
    },
    messages: {
        "email": {
            remote: "Email已经存在"
        },
        "phonenumber":{
            remote: "手机号码已经存在"
        }
    },
    focusCleanup: true
});

function submitHandler() {
    if ($.validate.form()) {
        var data = $("#form-user-edit").serializeArray();
        var status = $("input[id='status']").is(':checked') == true ? 0 : 1;
        var roleIds = $.form.selectCheckeds("role");
        var postIds = $.form.selectSelects("post");
        data.push({"name": "status", "value": status});
        data.push({"name": "roleIds", "value": roleIds});
        data.push({"name": "postIds", "value": postIds});
        $.operate.saveTab(prefix + "/edit", data);
    }
}

/*用户管理-修改-选择部门树*/
function selectDeptTree() {
    var deptId = $.common.isEmpty($("#treeId").val()) ? "100" : $("#treeId").val();
    var url = "/sys/dept/selectDeptTree/" + deptId;
    var options = {
        title: '选择部门',
        width: "380",
        url: url,
        callBack: doSubmit
    };
    $.modal.openOptions(options);
}

function doSubmit(index, layero){
    var tree = layero.find("iframe")[0].contentWindow.$._tree;
    if ($.tree.notAllowParents(tree)) {
        var body = layer.getChildFrame('body', index);
        $("#treeId").val(body.find('#treeId').val());
        $("#treeName").val(body.find('#treeName').val());
        layer.close(index);
    }
}