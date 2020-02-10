
window.onload=function(){
    var json = $("input[name='operParam']").val();
    if ($.common.isNotEmpty(json) && json.length < 2000) {
        $("#operParam").JSONView(json);
    } else {
        $("#operParam").text(json);
    }
};
