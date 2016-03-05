<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">    
        <title>退出</title>
    <asset:stylesheet src="login.css"/>
    <asset:javascript src="login_out.js"/>
</head>
<body>
    <div id = "main">
        <div class = "top">
            <div class="title">再见${userName}!</div>
            <div class="logoutForm">
                <table>
                    <tr>
                        <td>
                            <g:link controller="home" action="login">
                                再次登录
                            </g:link>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href='javascript:closePage()'>
                                关闭页面
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>

