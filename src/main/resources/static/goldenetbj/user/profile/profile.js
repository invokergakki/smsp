/*用户管理-头像*/
function avatar() {
   var url = '/sys/user/profile/avatar';
    $.modal.open("修改头像", url);
}

/*用户信息-修改*/
$("#form-user-edit").validate({
    onkeyup: false,
    rules:{
        userName:{
            required:true,
        },
        email:{
            required:true,
            email:true,
            remote: {
                url: "/sys/user/checkEmailUnique",
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
            required:true,
            isPhone:true,
            remote: {
                url: "/sys/user/checkPhoneUnique",
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
        "userName": {
            required: "请输入用户名称",
        },
        "email": {
            required: "请输入邮箱",
            remote: "Email已经存在"
        },
        "phonenumber":{
            required: "请输入手机号码",
            remote: "手机号码已经存在"
        }
    },
    focusCleanup: true
});

function submitUserInfo() {
    if ($.validate.form()) {
        $.operate.saveModal("/sys/user/profile/update", $('#form-user-edit').serialize());
    }
}

/*用户管理-修改密码*/
$("#form-user-resetPwd").validate({
    onkeyup: false,
    rules:{
        oldPassword:{
            required:true,
            remote: {
                url: "/sys/user/profile/checkPassword",
                type: "get",
                dataType: "json",
                data: {
                    password: function() {
                        return $("input[name='oldPassword']").val();
                    }
                }
            }
        },
        newPassword: {
            required: true,
            minlength: 5,
            maxlength: 20
        },
        confirmPassword: {
            required: true,
            equalTo: "#newPassword"
        }
    },
    messages: {
        oldPassword: {
            required: "请输入原密码",
            remote: "原密码错误"
        },
        newPassword: {
            required: "请输入新密码",
            minlength: "密码不能小于5个字符",
            maxlength: "密码不能大于20个字符"
        },
        confirmPassword: {
            required: "请再次输入新密码",
            equalTo: "两次密码输入不一致"
        }

    },
    focusCleanup: true
});

function submitChangPassword () {
    if ($.validate.form("form-user-resetPwd")) {
        $.operate.saveModal("/sys/user/profile/resetPwd", $('#form-user-resetPwd').serialize());
    }
}