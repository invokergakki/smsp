$("#form-user-resetPwd").validate({
    rules:{
        password:{
            required:true,
            minlength: 5,
            maxlength: 20
        },
    },
    focusCleanup: true
});

function submitHandler() {
    if ($.validate.form()) {
        $.operate.save("/sys/user/resetPwd", $('#form-user-resetPwd').serialize());
    }
}