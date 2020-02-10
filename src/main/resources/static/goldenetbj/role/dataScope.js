$(function() {
    var url = "/sys/dept/roleDeptTreeData?roleId=" + $("#roleId").val();
    var options = {
        id: "deptTrees",
        url: url,
        check: { enable: true, nocheckInherit: true, chkboxType: { "Y": "ps", "N": "ps" } },
        expandLevel: 2
    };
    $.tree.init(options);
});

function submitHandler() {
    if ($.validate.form()) {
        edit();
    }
}

function edit() {
    var roleId = $("input[name='roleId']").val();
    var roleName = $("input[name='roleName']").val();
    var roleKey = $("input[name='roleKey']").val();
    var dataScope = $("#dataScope").val();
    var deptIds = $.tree.getCheckedNodes();
    $.ajax({
        cache : true,
        type : "POST",
        url : "/sys/role/authDataScope",
        data : {
            "roleId": roleId,
            "roleName": roleName,
            "roleKey": roleKey,
            "dataScope": dataScope,
            "deptIds": deptIds
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

$("#dataScope").change(function(event){
    var dataScope = $(event.target).val();
    dataScopeVisible(dataScope);
});

function dataScopeVisible(dataScope) {
    if (dataScope == 2) {
        $("#authDataScope").show();
    } else {
        $._tree.checkAllNodes(false);
        $("#authDataScope").hide();
    }
}