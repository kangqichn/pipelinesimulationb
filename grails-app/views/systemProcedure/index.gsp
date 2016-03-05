
<%@ page import="cn.edu.cup.system.SystemProcedure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemProcedure.label', default: 'SystemProcedure')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemProcedure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemProcedure" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'systemProcedure.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="controllerName" title="${message(code: 'systemProcedure.controllerName.label', default: 'Controller Name')}" />
					
						<g:sortableColumn property="actionName" title="${message(code: 'systemProcedure.actionName.label', default: 'Action Name')}" />
					
						<g:sortableColumn property="viewName" title="${message(code: 'systemProcedure.viewName.label', default: 'View Name')}" />
					
						<g:sortableColumn property="templateName" title="${message(code: 'systemProcedure.templateName.label', default: 'Template Name')}" />
					
						<g:sortableColumn property="appendActions" title="${message(code: 'systemProcedure.appendActions.label', default: 'Append Actions')}" />
					
						<th><g:message code="systemProcedure.previous.label" default="Previous" /></th>
					
						<th><g:message code="systemProcedure.next.label" default="Next" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemProcedureInstanceList}" status="i" var="systemProcedureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemProcedureInstance.id}">${fieldValue(bean: systemProcedureInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: systemProcedureInstance, field: "controllerName")}</td>
					
						<td>${fieldValue(bean: systemProcedureInstance, field: "actionName")}</td>
					
						<td>${fieldValue(bean: systemProcedureInstance, field: "viewName")}</td>
					
						<td>${fieldValue(bean: systemProcedureInstance, field: "templateName")}</td>
					
						<td>${fieldValue(bean: systemProcedureInstance, field: "appendActions")}</td>
					
						<td>${fieldValue(bean: systemProcedureInstance, field: "previous")}</td>
					
						<td>${fieldValue(bean: systemProcedureInstance, field: "next")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${systemProcedureInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
