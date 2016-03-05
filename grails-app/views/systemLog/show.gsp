
<%@ page import="cn.edu.cup.system.SystemLog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemLog.label', default: 'SystemLog')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemLog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemLog" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemLog">
			
				<g:if test="${systemLogInstance?.sessionId}">
				<li class="fieldcontain">
					<span id="sessionId-label" class="property-label"><g:message code="systemLog.sessionId.label" default="Session Id" /></span>
					
						<span class="property-value" aria-labelledby="sessionId-label"><g:fieldValue bean="${systemLogInstance}" field="sessionId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLogInstance?.hostIP}">
				<li class="fieldcontain">
					<span id="hostIP-label" class="property-label"><g:message code="systemLog.hostIP.label" default="Host IP" /></span>
					
						<span class="property-value" aria-labelledby="hostIP-label"><g:fieldValue bean="${systemLogInstance}" field="hostIP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLogInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="systemLog.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${systemLogInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLogInstance?.doing}">
				<li class="fieldcontain">
					<span id="doing-label" class="property-label"><g:message code="systemLog.doing.label" default="Doing" /></span>
					
						<span class="property-value" aria-labelledby="doing-label"><g:fieldValue bean="${systemLogInstance}" field="doing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLogInstance?.loginDate}">
				<li class="fieldcontain">
					<span id="loginDate-label" class="property-label"><g:message code="systemLog.loginDate.label" default="Login Date" /></span>
					
						<span class="property-value" aria-labelledby="loginDate-label"><g:formatDate date="${systemLogInstance?.loginDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:systemLogInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${systemLogInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
