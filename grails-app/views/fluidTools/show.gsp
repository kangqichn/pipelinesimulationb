<%@ page import="cn.edu.cup.fluid.gas.FluidGas" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'fluidGas.label', default: 'FluidGas')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    <asset:javascript src="user/fluid/tools/drawComponentFactors.js" /> 

</head>
<body>
    <a href="#show-fluidGas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li>
                <g:link class="list" action="index">
                    <g:message code="default.list.label" args="[entityName]" />
                </g:link>
            </li>
            <li>
                <g:link class="create" action="create">
                    <g:message code="default.new.label" args="[entityName]" />
                </g:link>
            </li>
        </ul>
    </div>
    <div id="show-fluidGas" class="content scaffold-show" role="main">
        <h1>${fluidGasInstance.name}</h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <!---->
        <div id="data" class="hidden">${fluidGasInstance.componentFactors()}</div>
        <table>
            <tr>
                <td style="width: 50%">
                    <div id="componentFactorPie"></div>
                </td>
                <td>
                <!--这是文件的原始信息-->
                    <table>
                        <tbody>
                            <tr>
                                <td colspan="2" class="">${fluidGasInstance.name}--的组分情况：</td>
                            </tr>
                            <g:each in="${fluidGasInstance.componentFactor}" status="i" var="e">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td>${e.gasComponent}</td>
                                    <td>${e.value}</td>
                                </tr>
                            </g:each>
                        </tbody>
                    </table>
                </td>
            </tr>
        </table>

<!---->
        <g:form url="[resource:fluidGasInstance, action:'delete']" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${fluidGasInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </fieldset>
        </g:form>
    </div>
</body>
</html>
