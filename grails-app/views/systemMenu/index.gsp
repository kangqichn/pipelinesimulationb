
<%@ page import="cn.edu.cup.system.SystemMenu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemMenu.label', default: 'SystemMenu')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemMenu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemMenu" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="menuContext" title="${message(code: 'systemMenu.menuContext.label', default: 'Menu Context')}" />
					
						<g:sortableColumn property="menuAction" title="${message(code: 'systemMenu.menuAction.label', default: 'Menu Action')}" />
					
						<g:sortableColumn property="menuRight" title="${message(code: 'systemMenu.menuRight.label', default: 'Menu Right')}" />
					
						<g:sortableColumn property="menuDescription" title="${message(code: 'systemMenu.menuDescription.label', default: 'Menu Description')}" />
					
						<g:sortableColumn property="menuOrder" title="${message(code: 'systemMenu.menuOrder.label', default: 'Menu Order')}" />
					
						<th><g:message code="systemMenu.upMenuItem.label" default="Up Menu Item" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemMenuInstanceList}" status="i" var="systemMenuInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemMenuInstance.id}">${fieldValue(bean: systemMenuInstance, field: "menuContext")}</g:link></td>
					
						<td>${fieldValue(bean: systemMenuInstance, field: "menuAction")}</td>
					
						<td>${fieldValue(bean: systemMenuInstance, field: "menuRight")}</td>
					
						<td>${fieldValue(bean: systemMenuInstance, field: "menuDescription")}</td>
					
						<td>${fieldValue(bean: systemMenuInstance, field: "menuOrder")}</td>
					
						<td>${fieldValue(bean: systemMenuInstance, field: "upMenuItem")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${systemMenuInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
