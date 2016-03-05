
<%@ page import="cn.edu.cup.system.SystemUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemUser.label', default: 'SystemUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="userName" title="${message(code: 'systemUser.userName.label', default: 'User Name')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'systemUser.password.label', default: 'Password')}" />
					
						<th><g:message code="systemUser.role.label" default="Role" /></th>
					
						<th><g:message code="systemUser.superior.label" default="Superior" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemUserInstanceList}" status="i" var="systemUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemUserInstance.id}">${fieldValue(bean: systemUserInstance, field: "userName")}</g:link></td>
					
						<td>${fieldValue(bean: systemUserInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: systemUserInstance, field: "role")}</td>
					
						<td>${fieldValue(bean: systemUserInstance, field: "superior")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${systemUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
