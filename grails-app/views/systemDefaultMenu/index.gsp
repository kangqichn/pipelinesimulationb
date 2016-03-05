
<%@ page import="cn.edu.cup.system.SystemDefaultMenu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemDefaultMenu.label', default: 'SystemDefaultMenu')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemDefaultMenu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemDefaultMenu" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="systemDefaultMenu.menuItem.label" default="Menu Item" /></th>
					
						<th><g:message code="systemDefaultMenu.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemDefaultMenuInstanceList}" status="i" var="systemDefaultMenuInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemDefaultMenuInstance.id}">${fieldValue(bean: systemDefaultMenuInstance, field: "menuItem")}</g:link></td>
					
						<td>${fieldValue(bean: systemDefaultMenuInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${systemDefaultMenuInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
