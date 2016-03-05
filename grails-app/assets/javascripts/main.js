/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//定义全局变量
var loginDialog;
var logoutDialog;
var leftMenu;
var mainPanel;
var mainSystemMenuTree;
var passwordField;
var loginBtn;

//加载后立即执行的代码
$(function () {
    leftMenu = $("#leftMenu").accordion({onSelect: function (title) {
            console.info(title);
            mainPanel = $("#mainPanel").panel('setTitle', "主功能区=>" + title);
            //调用ajax，将title写入session
            $.ajax({
                url: 'home/menuClick',
                data: {menu: title},
                cache: false,
                dataType: 'string',
                success: function (data) {
                    //location.reload();
                    console.info(data);
                }
            });
        }});
});


function showMenuInfo(info, menu) {
    console.info("showMenuInfo: " + info);
    $.ajax({
        url: 'home/showMenuInfo',
        data: {menuDescription: info, menu: menu},
        chche: false,
        dataType: 'string',
        success: function (data) {
            console.info(info);
        }
    });
}

//显示登录对话框
function login(url) {
    console.info("hi login");
    //显示对话框
    loginDialog = $('#loginDialog').show().dialog({
        modal: true,
        closable: false,
        buttons: [{
                text: '登录',
                id: 'loginBtn',
                handler: function () {
                    loginFun(url);
                }
            }]
    });
}

//登录
function loginFun(url) {
    //console.info("loginFun");
    var form = loginDialog.find('form');
    console.info(form.serialize());
    $.post(
            url,
            form.serialize(),
            function (result) {
                console.info(result);
                //关闭对话框
                loginDialog.dialog('close');
                //刷新当前页面
                location.reload();
            }, 'JSON'
            );
}

//退出对话框
function logout(url, user) {
    //$.messager.alert('退出', '再见' + user + '...');//时间太短
    console.info('开始退出:' + url);
    $.messager.confirm('确认对话框', user + '您想要退出该系统吗？', function (r) {
        if (r) {
            // 退出操作;
            //setTimeout(20000);
            $.ajax({
                url: url,
                success: function (message) {
                    console.info(user + '退出了');
                    //关闭窗口
                    //location.reload();
                }
            });
        }
    });
    return false;
}

