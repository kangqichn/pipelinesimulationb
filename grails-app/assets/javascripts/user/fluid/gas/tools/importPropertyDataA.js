/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var row;
var propertyIds;

$(function() {
    propertyIds = $("#propertyId tr");
    console.info("-----" + row);
});

function doImportB() {
    row = $("#names tr");
    row.each(function (index, item) {
        if (index > 0) {
            console.info(item);
            var dd = processArray(item);
            processRow(dd);
            item.remove();
        }
    });
    location.href = "gasComponentPropertyValue/index";
}

function doImportA() {
    row = $("#names tr");
    console.info("row = " + row);
    console.info("property = " + propertyIds);
    var ps = processArray(propertyIds[1]);
    row.each(function (index, item) {
        if (index === 1) {
            console.info(item);
            var dd = processArray(item);
            processRow(dd, ps);
            item.remove();
        }
    });
}

function processArray(rowdata) {
    console.info("行:" + rowdata);
    var data = rowdata.cells;
    console.info("cells:" + data);
    var n = data.length;
    var dd = new Array();
    var i;
    for (i = 0; i < n; i++) {
        dd[i] = data[i].innerText;
    }
    console.info(n + " 数据：" + dd);
    return dd;
}

function processRow(dd, ps) {
    $.ajax({
        type: 'POST',
        url: 'propertyDataTools/createComponentPropertyDataAndSave',
        data: {names: dd, properties: ps},
        success: function (data, textStatus) {
            $("#realTimeDiv").html(data);
        },
        error: function (xhr, textStatus, errorThrown) {
            console.log('创建属性出错了' + xhr);
            console.log('创建属性出错了' + textStatus);
            console.log('创建属性出错了' + errorThrown);
        }
    });
}

