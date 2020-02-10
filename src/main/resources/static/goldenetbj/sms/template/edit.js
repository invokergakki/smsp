var prefix = "/sys/sms/template";

$("#form-smstemplate-edit").validate({
    onkeyup: false,
    rules:{
        menuType:{
            required:true,
        },
        menuName:{
            remote: {
                url: prefix + "/checkMenuNameUnique",
                type: "post",
                dataType: "json",
                data: {
                    "menuId": function() {
                        return $("#menuId").val();
                    },
                    "parentId": function() {
                        return $("input[name='parentId']").val();
                    },
                    "menuName": function() {
                        return $.common.trim($("#menuName").val());
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
    },
    messages: {
        "menuName": {
            remote: "菜单已经存在"
        }
    },
    focusCleanup: true
});
function submitHandler() {
    if ($.validate.form()) {
        $.operate.save(prefix + "/edit", $('#form-smstemplate-add').serialize());
    }
}
