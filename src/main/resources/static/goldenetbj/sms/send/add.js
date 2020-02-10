var prefix = "/sys/sms/send";


function submitHandler() {
    if ($.validate.form()) {
        $.operate.save(prefix + "/add", $('#form-smssend-add').serialize());
    }
}
