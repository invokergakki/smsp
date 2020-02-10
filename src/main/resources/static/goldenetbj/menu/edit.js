var prefix = "/sys/menu";

$(function() {
    var menuType = $('input[name="menuType"]:checked').val();
    menuVisible(menuType);
});

$("#form-menu-edit").validate({
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
        $.operate.save(prefix + "/edit", $('#form-menu-edit').serialize());
    }
}

$(function() {
    $("input[name='icon']").focus(function() {
        $(".icon-drop").show();
    });
    $("#form-menu-edit").click(function(event) {
        var obj = event.srcElement || event.target;
        if (!$(obj).is("input[name='icon']")) {
            $(".icon-drop").hide();
        }
    });
    $(".icon-drop").find(".ico-list i").on("click",
        function() {
            $('#icon').val($(this).attr('class'));
        });
    $('input').on('ifChecked',
        function(event) {
            var menuType = $(event.target).val();
            menuVisible(menuType);
        });
});

function menuVisible(menuType) {
    if (menuType == "M") {
        $("#url").parents(".form-group").hide();
        $("#perms").parents(".form-group").hide();
        $("#icon").parents(".form-group").show();
    } else if (menuType == "C") {
        $("#url").parents(".form-group").show();
        $("#perms").parents(".form-group").show();
        $("#icon").parents(".form-group").show();
    } else if (menuType == "F") {
        $("#url").parents(".form-group").hide();
        $("#perms").parents(".form-group").show();
        $("#icon").parents(".form-group").hide();
    }
}

/*菜单管理-修改-选择菜单树*/
function selectMenuTree() {
    var menuId = $("#treeId").val();
    if(menuId > 0) {
        var url = prefix + "/selectMenuTree/" + menuId;
        $.modal.open("选择菜单", url, '380', '380');
    } else {
        $.modal.alertError("主菜单不能选择");
    }
}

function selectMenuTree() {
    var menuId = $("#treeId").val();
    if(menuId > 0) {
        var url = prefix + "/selectMenuTree/" + menuId;
        var options = {
            title: '菜单选择',
            width: "380",
            url: url,
            callBack: doSubmit
        };
        $.modal.openOptions(options);
    } else {
        $.modal.alertError("主菜单不能选择");
    }
}

function doSubmit(index, layero){
    var body = layer.getChildFrame('body', index);
    $("#treeId").val(body.find('#treeId').val());
    $("#treeName").val(body.find('#treeName').val());
    layer.close(index);
}