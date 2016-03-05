
<%@ page import="cn.edu.cup.fluid.gas.FluidGas" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'fluidGas.label', default: 'FluidGas')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-fluidGas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="prepareImportComponentFactors">导入</g:link></li>
                </ul>
            </div>
            <div id="list-fluidGas" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>

                        <g:sortableColumn property="name" title="${message(code: 'fluidGas.name.label', default: 'Name')}" />

                        <g:sortableColumn property="comment" title="${message(code: 'fluidGas.comment.label', default: 'Comment')}" />

                        <g:sortableColumn property="moleMass" title="${message(code: 'fluidGas.moleMass.label', default: 'Mole Mass')}" />

                        <g:sortableColumn property="moleMassUnit" title="${message(code: 'fluidGas.moleMassUnit.label', default: 'Mole Mass Unit')}" />

                    </tr>
                </thead>
                <tbody>
                    <g:each in="${fluidGasInstanceList}" status="i" var="fluidGasInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show" id="${fluidGasInstance.id}">${fieldValue(bean: fluidGasInstance, field: "name")}</g:link></td>

                            <td>${fieldValue(bean: fluidGasInstance, field: "comment")}</td>

                            <td>${fieldValue(bean: fluidGasInstance, field: "moleMass")}</td>

                            <td>${fieldValue(bean: fluidGasInstance, field: "moleMassUnit")}</td>

                        </tr>
                    </g:each>
                </tbody>
            </table>
            <div class="paginationGrails">
                <g:paginate total="${fluidGasInstanceCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
