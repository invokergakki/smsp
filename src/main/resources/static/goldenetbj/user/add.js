var prefix = "/sys/user";

$("#form-user-add").validate({
    onkeyup: false,
    rules:{
        loginName:{
            minlength: 2,
            maxlength: 20,
            remote: {
                url: prefix + "/checkMessageUnique",
                type: "post",
                dataType: "json",
                data: {
                    name : function() {
                        return $.common.trim($("#loginName").val());
                    }
                },
                dataFilter: function(data, type) {
                    return $.validate.unique(data);
                }
            }
        },
        userName:{
            minlength: 2,
            maxlength: 20,
            remote: {
                url: prefix + "/checkMessageUnique",
                type: "post",
                dataType: "json",
                data: {
                    name : function() {
                        return $.common.trim($("#userName").val());
                    }
                },
                dataFilter: function(data, type) {
                    return $.validate.unique(data);
                }
            }
        },
        password:{
            minlength: 5,
            maxlength: 20
        },
        email:{
            email:true,
            remote: {
                url: prefix + "/checkMessageUnique",
                type: "post",
                dataType: "json",
                data: {
                    name: function () {
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
                url: prefix + "/checkMessageUnique",
                type: "post",
                dataType: "json",
                data: {
                    name: function () {
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
        "loginName": {
            remote: "用户已经存在"
        },
        "userName": {
            remote: "登录账号已经存在"
        },
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
        var data = $("#form-user-add").serializeArray();
        var status = $("input[id='status']").is(':checked') == true ? 0 : 1;
        var roleIds = $.form.selectCheckeds("role");
        data.push({"name": "status", "value": status});
        data.push({"name": "roleIds", "value": roleIds});
        $.operate.saveTab(prefix + "/add", data);
    }
}

/*用户管理-新增-选择部门树*/
function selectDeptTree() {
    var treeId = $("#treeId").val();
    var deptId = $.common.isEmpty(treeId) ? "100" : $("#treeId").val();
    var url = "/sys/dept/selectDeptTree/" + deptId;
    var options = {
        title: '选择部门',
        width: "380",
        url: "/sys/dept/selectDeptTree/" + deptId,
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