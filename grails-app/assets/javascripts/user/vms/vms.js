/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
   
    var appTabs = $("#blockTabs");
    appTabs.tabs({onSelect: function(title, index){
            console.info('选择：' + title + ':' + index);
            var p = $('#appViewPagination' + index).pagination('select');
    }});
    
    $('#appViewPagination0').pagination('select', 1); //缺省的状态，调出1页
    
});


function loadData(pageNumber, pageSize) {
    console.info('loading...' + pageNumber);
    var offset = (pageNumber - 1) * pageSize;
    var tab = $("#appTabs").tabs('getSelected');
    console.info(tab);
    var block = tab.panel('options').title;//tab;
    console.info('当前页：' + block);
    //调用testa--查询数据
    $.ajax({
        url: 'vms/queryWells',
        data: 'offset=' + offset + '&max=' + pageSize + '&block=' + block,
        success: function (data, textStatus) {
            $('#appView'+block).html(data);
            console.info(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.info(XMLHttpRequest);
            console.info(textStatus);
            console.info(errorThrown);
        }
    });
}

