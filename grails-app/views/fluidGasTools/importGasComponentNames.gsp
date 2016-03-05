
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'testDataA.label', default: 'TestDataA')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    <asset:javascript src="user/fluid/gas/tools/importGasComponentNames.js"/> 
</head>
<body>
    <a href="#list-testDataA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="home">请确认文件[${filename}]内容</g:link></li>
            <li><g:link class="home" action="${nextAction}" params='[filename: "${filename}"]' >动态确认</g:link></li>
            <li><g:link class="home" action="importComponentNames">重选</g:link></li>
            <g:if test="${data.size>0}">
                <li class="info">
                    数据行数：${data.size},列数:${data[0].size}
                </li>
                <li>
                    <a href="javascript:doImportA()">导入</a>
                </li>
                <li>
                    <a href="javascript:doImportB()">全部导入</a>
                </li>
        </g:if>
    </ul>
</div>
<hr>
<div id="list-testDataA" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div id="realTimeDiv" class="message" role="status">
        当前组分：${found}
    </div>
    <g:if test="${dataHeads}">
        <table>
            <tbody>
                <g:each in="${dataHeads}" status="i" var="item">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td>${item.key}</td>
                        <td>${item.value}</td>
                    </tr>
                </g:each>
            </tbody>
        </table>
        <hr>
    </g:if>
    <table id="names">
        <tbody>
            <g:each in="${data}" status="i" var="item">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <g:each in="${item}" status="j" var="e">
                        <td>${e}</td>
                    </g:each>
                </tr>
            </g:each>
        </tbody>
    </table>
</div>
</body>
</html>
