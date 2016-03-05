/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var systemMenuTree;
var currentNode;

//页面加载后马上执行
$(function () {
    systemMenuTree = $('#menu_systemMenuTree').tree({
        onClick: function (node) {
            console.info(node.id, node.text);  // 在用户点击的时候提示
            var currentNode = $('#currentNodeMenu')[0];
            currentNode.innerText = '当前节点：' + node.text + '| id=' + node.id;
            //调入当前菜单
            $.ajax({
                type: 'POST',
                url: 'systemMenuTree/loadMenuItem',
                data: {id: node.id},
                success: function (data, textStatus) {
                    $('#systemMenuEditDiv').html(data);
                },
                error: function (xhr, textStatus, errorThrown) {
                    console.log('出错了' + node.id + xhr);
                }
            });
        }
    });
});

function remoteCreate() {
    currentNode = systemMenuTree.tree('getSelected');
    $.ajax({
        type: 'POST',
        url: 'systemMenuTree/createSystemMenu',
        data: {upMenuItem: currentNode.id},
        success: function (data, textStatus) {
            $('#systemMenuEditDiv').html(data);
        },
        error: function (xhr, textStatus, errorThrown) {
            console.log('出错了' + currentNode.id + xhr);
        }
    });
}

