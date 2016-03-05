/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var tabDiv;
var appendArray;
var tabPageDivs = new Array();
//加载后，第一时间执行
$(function () {
    console.info("处理附加的操作...");
    var appendTextDiv = $("#appendActionsText");
    //console.info(appendTextDiv);
    var appendText = appendTextDiv.text();
    //console.info(appendText);
    appendArray = appendText.split(",");
    //console.info(appendArray);

    var ul = $("#actions");
    //console.info(ul);
    var li_href_str;
    tabDiv = $('#newCompressorCurveTestTab');
    //console.info(tabDiv);
    var pageContext;
    var nstr;
    
    $.each(appendArray, function (index, value) {
        //console.info(index);
        //console.info(value);
        var action = value.split(":");
        tabPageDivs[index] = action[0];
        //console.info(action);
        //var $nstr =$("<li href=\"javascript:" + action[1] + "()\">" + action[0] + "</li>"); 
        //显示处理步骤中的各个按钮
        li_href_str = "<li> <a href=\"javascript:" + action[1] + "()\">" + action[0] + "</a></li>";
        //console.info(nstr);
        ul.append(li_href_str);
        //显示各个Tab页面
        switch (index)
        {
            case 0:
                //执行代码块 1
                nstr = '<g:render template=\"uploadFile\"/>';
                break;
            case 2:
                //执行代码块 2
                break;
            default:
                //n 与 case 1 和 case 2 不同时执行的代码
        }
        pageContext = '<div id=\"' + action[0] + '\"></div>';
        tabDiv.tabs("add", {title: value, style: "padding:20px", content: pageContext});
    });
    //tabDiv.tabs('select', 0);   //激活第一个页面
    //console.info(tabPageDivs);

    var fun = eval(appendArray[0]);
    //console.info(fun);
    fun();
});

function importFile() {
    var functionName = '导入廊坊项目文件-';
    tabDiv.tabs('select', appendArray[0]);
    var fn = $("#currentExcelFile").text();
    
    $.ajax({
        type: 'POST',
        url: 'compressorTools/saveCompressorCurveTest',
        data: {filename: fn},
        success: function (data, textStatus) {
            $('#newCurveTest').html(data);
        },
        error: function (xhr, textStatus, errorThrown) {
            console.log(functionName + xhr);
            console.log(functionName + textStatus);
            console.log(functionName + errorThrown);
        }
    });
}
