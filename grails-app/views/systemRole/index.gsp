
<%@ page import="cn.edu.cup.system.SystemRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemRole.label', default: 'SystemRole')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemRole" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="roleName" title="${message(code: 'systemRole.roleName.label', default: 'Role Name')}" />
					
						<g:sortableColumn property="roleRight" title="${message(code: 'systemRole.roleRight.label', default: 'Role Right')}" />
					
						<g:sortableColumn property="roleRightMin" title="${message(code: 'systemRole.roleRightMin.label', default: 'Role Right Min')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemRoleInstanceList}" status="i" var="systemRoleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemRoleInstance.id}">${fieldValue(bean: systemRoleInstance, field: "roleName")}</g:link></td>
					
						<td>${fieldValue(bean: systemRoleInstance, field: "roleRight")}</td>
					
						<td>${fieldValue(bean: systemRoleInstance, field: "roleRightMin")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${systemRoleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
