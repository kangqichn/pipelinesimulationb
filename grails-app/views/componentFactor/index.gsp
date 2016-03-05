
<%@ page import="cn.edu.cup.fluid.gas.ComponentFactor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'componentFactor.label', default: 'ComponentFactor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-componentFactor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-componentFactor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="componentFactor.gasComponent.label" default="Gas Component" /></th>
					
						<g:sortableColumn property="value" title="${message(code: 'componentFactor.value.label', default: 'Value')}" />
					
						<th><g:message code="componentFactor.fluidGas.label" default="Fluid Gas" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${componentFactorInstanceList}" status="i" var="componentFactorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${componentFactorInstance.id}">${fieldValue(bean: componentFactorInstance, field: "gasComponent")}</g:link></td>
					
						<td>${fieldValue(bean: componentFactorInstance, field: "value")}</td>
					
						<td>${fieldValue(bean: componentFactorInstance, field: "fluidGas")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${componentFactorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
