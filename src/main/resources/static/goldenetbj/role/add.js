$(function() {
    var url =  "/sys/menu/roleMenuTreeData";
    var options = {
        id: "menuTrees",
        url: url,
        check: { enable: true },
        expandLevel: 0
    };
    $.tree.init(options);
});

$("#form-role-add").validate({
    rules:{
        onkeyup: false,
        roleName:{
            remote: {
                url: "/sys/role/checkRoleNameUnique",
                type: "post",
                dataType: "json",
                data: {
                    "roleName" : function() {
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
                    "roleName" : function() {
                        return $.common.trim($("#roleName").val());
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

function submitHandler() {
    if ($.validate.form()) {
        add();
    }
}

function add() {
    var roleName = $("input[name='roleName']").val();
    var roleKey = $("input[name='roleKey']").val();
    var roleSort = $("input[name='roleSort']").val();
    var status = $("input[id='status']").is(':checked') == true ? 0 : 1;
    var remark = $("input[name='remark']").val();
    var menuIds = $.tree.getCheckedNodes();
    $.ajax({
        cache : true,
        type : "POST",
        url : "/sys/role/add",
        data : {
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