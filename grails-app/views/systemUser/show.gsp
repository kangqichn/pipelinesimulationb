
<%@ page import="cn.edu.cup.system.SystemUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemUser.label', default: 'SystemUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemUser">
			
				<g:if test="${systemUserInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="systemUser.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${systemUserInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemUserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="systemUser.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${systemUserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemUserInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="systemUser.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:link controller="systemRole" action="show" id="${systemUserInstance?.role?.id}">${systemUserInstance?.role?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemUserInstance?.superior}">
				<li class="fieldcontain">
					<span id="superior-label" class="property-label"><g:message code="systemUser.superior.label" default="Superior" /></span>
					
						<span class="property-value" aria-labelledby="superior-label"><g:link controller="systemUser" action="show" id="${systemUserInstance?.superior?.id}">${systemUserInstance?.superior?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemUserInstance?.subordinates}">
				<li class="fieldcontain">
					<span id="subordinates-label" class="property-label"><g:message code="systemUser.subordinates.label" default="Subordinates" /></span>
					
						<g:each in="${systemUserInstance.subordinates}" var="s">
						<span class="property-value" aria-labelledby="subordinates-label"><g:link controller="systemUser" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:systemUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${systemUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
