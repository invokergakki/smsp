$(function() {
    var url = "/sys/dept/treeData";
    var options = {
        url: url,
        expandLevel: 2,
        onClick : zOnClick
    };
    $.tree.init(options);
});

function zOnClick(event, treeId, treeNode) {
    var treeId = treeNode.id;
    var treeName = treeNode.name;
    $("#treeId").val(treeId);
    $("#treeName").val(treeName);
}