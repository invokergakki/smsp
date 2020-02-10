
$(function() {
    validateRule();
});

$.validator.setDefaults({
    submitHandler: function() {
		login();
    }
});
$("#username").blur(function(){
    var username = $.common.trim($("input[name='username']").val());
    if(username == null || username == ''){
        $("#username-error1").show();
    }else{
        $("#username-error1").hide();
    }
});
$("#password").blur(function(){
    var password = $.common.trim($("input[name='password']").val());
    if(password == null || password == ''){
        $("#password-error1").show();
    }else{
        $("#password-error1").hide();
    }
});
function login() {

	var username = $.common.trim($("input[name='username']").val());
    var password = $.common.trim($("input[name='password']").val());
    var captcha = $.common.trim($("input[name='captcha']").val());
    if((username == null || username == '') && (password == null || password == '')){
        $("#username-error1").show();
        $("#password-error1").show();
        return false;
    }
    if(username == null || username == ''){
        $("#username-error1").show();
        return false;
    }
    if(password == null || password == ''){
        $("#password-error1").show();
        return false;
    }
    $.modal.loading("正在登陆，请稍后...");
    $.ajax({
        type: "post",
        url: "/sys/login",
        data: {
            "username": username,
            "password": password,
            "captcha" : captcha
        },
        success: function(r) {
            if (r.code == 0) {
                location.href ='/sys/index';
            } else {
                $.modal.closeLoading();
                $('.imgcode').click();
                $(".code").val("");
                $.modal.msg(r.msg);
                $("#captchaImg").attr("src","captcha.jpg");
                 setTimeout("location.reload()",3000);
            }
        }
    });
}
function validateRule() {
    var icon = "<i class='fa fa-times-circle'></i> ";
    $("#signupForm").validate({
        rules: {
            username: {
                required: false
            },
            password: {
                required: false
            }
        },
        messages: {
        }
    })
}
