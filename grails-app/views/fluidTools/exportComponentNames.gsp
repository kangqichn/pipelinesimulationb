<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="cn.edu.cup.fluid.gas.GasComponent" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="layout" content="main">
        <title>组分列表文件导出</title>
        <asset:javascript src='user/fluid/tools/componentSelect.js'/>
    </head>
    <body>
        <div id="show-fluidGas" class="content scaffold-show" role="main">
            <h1>气体组分</h1>
            <div id="componets">${components}</div>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:form controller="fluidTools" action="showExportExcelFile">
                <table>
                    <g:each in="${gasComponentInstanceList}" status="i" var="gasComponentInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                            <td>                
                                <input type="checkbox" name="components" value="${gasComponentInstance.id}">
                                ${gasComponentInstance.name}/${gasComponentInstance.description}/${gasComponentInstance.alias}
                                </input>
                            </td>
                        </tr>
                    </g:each>
                </table>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="提交" />
                </fieldset>
            </g:form>
            <div class="easyui-panel">
                <div class="easyui-pagination" data-options='total:${count}'></div>
            </div>
        </div>
        <g:if test="${targetFileName}">
            <hr>
            <h1>下表就是Excel文件模板，请下载后填写：</h1>
            <h1><a href="fluidTools/download?filename=${targetFileName}">下载Excel文件的模板</a></h1>
            <hr>
        </g:if>

    </body>
</html>
