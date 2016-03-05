/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    console.info("处理附加的操作...");
    var appendTextDiv = $("#appendActionsText");
    //console.info(appendTextDiv);
    var appendText = appendTextDiv.text();
    //console.info(appendText);
    var appendArray = appendText.split(";");
    console.info(appendArray);

    var ul = $("#action");
    console.info(ul);

    $.each(appendArray, function (index, value) {
        //console.info(index);
        //console.info(value);
        var action = value.split(":");
        console.info(action);
        //var $nstr =$("<li href=\"javascript:" + action[1] + "()\">" + action[0] + "</li>"); 
        var nstr = "<li> <a href=\"javascript:" + action[1] + "()\">" + action[0] + "</a></li>";
        console.info(nstr);
        ul.append(nstr);
    });
    
    checkGasName();
});

function checkGasName() {
    console.info("检查气体名字是否重复");
    var row = $("#data tr");
    console.info(row);
    var a11 = row[0];
    console.info(a11);
    var b11 = a11.cells;
    console.info(b11);
    var c11 = b11[0].innerText;
    console.info(c11);

    $.ajax({
        type: 'POST',
        url: 'fluidTools/checkFluidGasName',
        data: {name: c11},
        success: function (data, textStatus) {
            $("#appendMessage").html(data);
        },
        error: function (xhr, textStatus, errorThrown) {
            console.log('检查气体名字是否重复-出错了' + xhr);
            console.log('检查气体名字是否重复-出错了' + textStatus);
            console.log('检查气体名字是否重复-出错了' + errorThrown);
        }
    });

}
