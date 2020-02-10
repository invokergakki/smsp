$(function() {
    var url =  "/sys/menu/roleMenuTreeData?roleId=" + $("#roleId").val();
    var options = {
        id: "menuTrees",
        url: url,
        check: { enable: true },
        expandLevel: 0
    };
    $.tree.init(options);
});

$("#form-role-edit").validate({
    onkeyup: false,
    rules:{
        roleName:{
            remote: {
                url:  "/sys/role/checkRoleNameUnique",
                type: "post",
                dataType: "json",
                data: {
                    "roleId": function() {
                        return $("#roleId").val();
                    },
                    "roleName": function() {
                        return $.common.trim($("#roleName").val());
                    }
                },
                dataFilter: function(data, type) {
                    return $.validate.unique(data);
                }
            }
        },
        roleKey:{
            remote: {
                url: "/sys/role/checkRoleKeyUnique",
                type: "post",
                dataType: "json",
                data: {
                    "roleId": function() {
                        return $("#roleId").val();
                    },
                    "roleKey": function() {
                        return $.common.trim($("#roleKey").val());
                    }
                },
                dataFilter: function(data, type) {
                    return $.validate.unique(data);
                }
            }
        },
        roleSort:{
            digits:true
        },
    },
    messages: {
        "roleName": {
            remote: "角色名称已经存在"
        },
        "roleKey": {
            remote: "角色权限已经存在"
        }
    },
    focusCleanup: true
});

function edit() {
    var roleId = $("input[name='roleId']").val();
    var roleName = $("input[name='roleName']").val();
    var roleKey = $("input[name='roleKey']").val();
    var roleSort = $("input[name='roleSort']").val();
    var status = $("input[id='status']").is(':checked') == true ? 0 : 1;
    var remark = $("input[name='remark']").val();
    var menuIds = $.tree.getCheckedNodes();
    $.ajax({
        cache : true,
        type : "POST",
        url :  "/sys/role/edit",
        data : {
            "roleId": roleId,
            "roleName": roleName,
            "roleKey": roleKey,
            "roleSort": roleSort,
            "status": status,
            "remark": remark,
            "menuIds": menuIds
        },
        async : false,
        error : function(request) {
            $.modal.alertError("系统错误");
        },
        success : function(data) {
            $.operate.successCallback(data);
        }
    });
}

function submitHandler() {
    if ($.validate.form()) {
        edit();
    }
}