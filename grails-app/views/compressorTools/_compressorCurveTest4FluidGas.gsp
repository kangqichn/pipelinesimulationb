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
        <div id="list-compressorCurveTest" class="content scaffold-list" role="main">
            <h1>使用[${gas}]--进行的测试</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>

                        <th><g:message code="compressorCurveTest.compressor.label" default="Compressor" /></th>

                            <g:sortableColumn property="pressure" title="${message(code: 'compressorCurveTest.pressure.label', default: 'Pressure')}" />

                            <g:sortableColumn property="pressureUnit" title="${message(code: 'compressorCurveTest.pressureUnit.label', default: 'Pressure Unit')}" />

                            <g:sortableColumn property="temperatrue" title="${message(code: 'compressorCurveTest.temperatrue.label', default: 'Temperatrue')}" />

                            <g:sortableColumn property="temperatureUnit" title="${message(code: 'compressorCurveTest.temperatureUnit.label', default: 'Temperature Unit')}" />

                            <g:sortableColumn property="speed" title="${message(code: 'compressorCurveTest.speed.label', default: 'Speed')}" />

                            <g:sortableColumn property="speedUnit" title="${message(code: 'compressorCurveTest.speedUnit.label', default: 'Speed Unit')}" />

                            <g:sortableColumn property="testDate" title="${message(code: 'compressorCurveTest.testDate.label', default: 'Test Date')}" />

                    </tr>
                </thead>
                <tbody>
                    <g:each in="${compressorCurveTestInstanceList}" status="i" var="compressorCurveTestInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show" id="${compressorCurveTestInstance.id}">${fieldValue(bean: compressorCurveTestInstance, field: "compressor")}</g:link></td>

                            <td>${fieldValue(bean: compressorCurveTestInstance, field: "pressure")}</td>

                            <td>${fieldValue(bean: compressorCurveTestInstance, field: "pressureUnit")}</td>

                            <td>${fieldValue(bean: compressorCurveTestInstance, field: "temperatrue")}</td>

                            <td>${fieldValue(bean: compressorCurveTestInstance, field: "temperatureUnit")}</td>

                            <td>${fieldValue(bean: compressorCurveTestInstance, field: "speed")}</td>

                            <td>${fieldValue(bean: compressorCurveTestInstance, field: "speedUnit")}</td>

                            <td><g:formatDate date="${compressorCurveTestInstance.testDate}" /></td>

                        </tr>
                    </g:each>
                </tbody>
            </table>

            <div class="paginationGrails">
                <g:paginate total="${compressorCurveTestInstanceCount ?: 0}" />
            </div>
        </div>

    </body>
</html>
