<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample title</title>
    </head>
    <body>
        <h1>请选择要测试的压缩机：</h1>
        <hr>
        <div class="content scaffold-list">
            <form>
                <table>
                    <tr>
                        <td>
                            <table>
                                <g:each in="${compressors}" status="i" var="item">
                                    <tr>
                                        <td>
                                            <input type="radio" name="theCompressor" value="${item.id}" onclick="showTest(this)">${item} </input>
                                        </td>
                                    </tr>

                                </g:each>
                                    <tr>
                                        <td><input id="autoStep" type="checkbox" name="autoStep" />自动跳转到下一页</td>
                                    </tr>
                            </table>
                        </td>
                        <td>
                            <div id="testDiv"></div>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
