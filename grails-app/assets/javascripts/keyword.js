/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    $('#menu_keywordTree').tree({
        onClick: function (node) {
            //alert(node.text);  // 在用户点击的时候提示
            //alert(node.id);
            var currentNode = $('#currentNode')[0];
            currentNode.innerText = '当前节点：' + node.text + '| id=' + node.id;

            console.log('before 点击' + node.id);

            //{<g:remoteFunction action="loadKeyWord?keyWordId=1" update="keyWordEditDiv"/>}
            $.ajax({
                type: 'POST',
                url: 'keyWordTree/loadKeyWord?keyWordId=' + node.id,
                success: function (data, textStatus) {
                    $('#keyWordEditDiv').html(data);
                },
                error: function (xhr, textStatus, errorThrown) {
                    console.log('出错了' + node.id + xhr);
                }
            });
        }
    });
});

//创建输入菜单
function remoteCreateInputMenu() {
    //获取树状结构当前的选择
    var node = $("#menu_keywordTree").tree('getSelected');
    console.log('创建' + node.id + '的输入菜单...');
    $.ajax({
        type: 'POST',
        url:  'keyWordTree/createSystemMenu?menuContext=' 
                + node.text 
                + '&menuAction=data/index4DataProject?keyId=' 
                + node.id 
                + '&menuDescription=维护' + node.text,
        success: function (data, textStatus) {
            $('#keyWordEditDiv').html(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        }
    });
}

//创建子节点
function remoteCreate() {
    //获取树状结构当前的选择
    var node = $("#menu_keywordTree").tree('getSelected');
    console.log('创建' + node.id + '的子节点...');
    $.ajax({
        type: 'POST',
        url: 'keyWordTree/createKeyWord?upKeyWord.id=' + node.id,
        success: function (data, textStatus) {
            $('#keyWordEditDiv').html(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        }
    });
}

//遍历对象的属性
function displayProp(obj) {
    var names = "";
    for (var name in obj) {
        names += name + ": " + obj[name] + ", ";
    }
    alert(names);
}
