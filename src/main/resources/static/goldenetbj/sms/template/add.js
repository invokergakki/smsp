var prefix = "/sys/sms/template";


function submitHandler() {
    if ($.validate.form()) {
        $.operate.save(prefix + "/add", $('#form-smstemplate-add').serialize());
    }
}
