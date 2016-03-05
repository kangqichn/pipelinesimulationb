
<%@ page import="cn.edu.cup.system.SystemRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemRole.label', default: 'SystemRole')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemRole" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemRole">
			
				<g:if test="${systemRoleInstance?.roleName}">
				<li class="fieldcontain">
					<span id="roleName-label" class="property-label"><g:message code="systemRole.roleName.label" default="Role Name" /></span>
					
						<span class="property-value" aria-labelledby="roleName-label"><g:fieldValue bean="${systemRoleInstance}" field="roleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoleInstance?.roleRight}">
				<li class="fieldcontain">
					<span id="roleRight-label" class="property-label"><g:message code="systemRole.roleRight.label" default="Role Right" /></span>
					
						<span class="property-value" aria-labelledby="roleRight-label"><g:fieldValue bean="${systemRoleInstance}" field="roleRight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoleInstance?.roleRightMin}">
				<li class="fieldcontain">
					<span id="roleRightMin-label" class="property-label"><g:message code="systemRole.roleRightMin.label" default="Role Right Min" /></span>
					
						<span class="property-value" aria-labelledby="roleRightMin-label"><g:fieldValue bean="${systemRoleInstance}" field="roleRightMin"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:systemRoleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${systemRoleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
