
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'testDataA.label', default: 'TestDataA')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    <asset:javascript src="user/fluid/tools/fluidGasTools"/>
</head>
<body>
    <a href="#list-testDataA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div id="appendActionsText" class="hidden">${nextStep.appendActions}</div>
    <div class="nav" role="navigation">
        <ul id="action">
            <li>
                <g:link class="home">请确认文件[${filename}]内容
                </g:link>
            </li>
            <li>
                <g:link class="home" controller="${nextStep.controllerName}" action="${nextStep.actionName}" params='[filename: "${filename}", stepid: "${nextStep.id}"]' >
                    确认-下一步->
                </g:link>
            </li>
            <li><a href="javascript:history.go(-1);">重选</a></li>
            <g:if test="${data.size>0}">
                <li class="info">
                    数据行数：${data.size},列数:${data[0].size}
                </li>
        </g:if>
    </ul>
</div>
<hr>
<div id="appendMessage"></div>
<div id="list-testDataA" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table id="data">
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
