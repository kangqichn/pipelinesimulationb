/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function doImportB() {
    var row = $("#names tr");
    row.each(function (index, item) {
        if (index > 0) {
            console.info(item);
            var dd = processArray(item);
            processRow(dd);
            item.remove();
        }
    });
    location.href = "gasComponent/index";
}

function doImportA() {
    var row = $("#names tr");
    row.each(function (index, item) {
        if (index === 1) {
            console.info(item);
            var dd = processArray(item);
            processRow(dd);
            item.remove();
        }
    });
}

function processArray(rowdata) {
    console.info("-------" + rowdata);
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

function processRow(dd) {
    $.ajax({
        type: 'POST',
        url: 'fluidGasTools/createComponentAndSave',
        data: {names: dd},
        success: function (data, textStatus) {
            $("#realTimeDiv").html(data);
        },
        error: function (xhr, textStatus, errorThrown) {
            console.log('创建组分出错了' + xhr);
            console.log('创建组分出错了' + textStatus);
            console.log('创建组分出错了' + errorThrown);
        }
    });
}

function doImport() {
    var row = $("#names tr")[1];
    var rowdata = $("#names tr")[1].cells;
    var n = $("#names tr")[0].cells.length;
    var dd = new Array();
    var i;
    for (i = 0; i < n; i++) {
        dd[i] = rowdata[i].innerText;
    }
    ;
    console.info(dd);

    $.ajax({
        type: 'POST',
        url: 'fluidGasTools/createComponentAndSave',
        data: {names: dd},
        success: function (data, textStatus) {
            $("#realTimeDiv").html(data);
            row.parent().parent().remove();
        },
        error: function (xhr, textStatus, errorThrown) {
            console.log('创建组分出错了' + xhr);
            console.log('创建组分出错了' + textStatus);
            console.log('创建组分出错了' + errorThrown);
        }
    });
}

