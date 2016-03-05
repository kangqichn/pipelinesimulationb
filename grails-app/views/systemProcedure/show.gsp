
<%@ page import="cn.edu.cup.system.SystemProcedure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemProcedure.label', default: 'SystemProcedure')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemProcedure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemProcedure" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemProcedure">
			
				<g:if test="${systemProcedureInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="systemProcedure.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${systemProcedureInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemProcedureInstance?.controllerName}">
				<li class="fieldcontain">
					<span id="controllerName-label" class="property-label"><g:message code="systemProcedure.controllerName.label" default="Controller Name" /></span>
					
						<span class="property-value" aria-labelledby="controllerName-label"><g:fieldValue bean="${systemProcedureInstance}" field="controllerName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemProcedureInstance?.actionName}">
				<li class="fieldcontain">
					<span id="actionName-label" class="property-label"><g:message code="systemProcedure.actionName.label" default="Action Name" /></span>
					
						<span class="property-value" aria-labelledby="actionName-label"><g:fieldValue bean="${systemProcedureInstance}" field="actionName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemProcedureInstance?.viewName}">
				<li class="fieldcontain">
					<span id="viewName-label" class="property-label"><g:message code="systemProcedure.viewName.label" default="View Name" /></span>
					
						<span class="property-value" aria-labelledby="viewName-label"><g:fieldValue bean="${systemProcedureInstance}" field="viewName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemProcedureInstance?.templateName}">
				<li class="fieldcontain">
					<span id="templateName-label" class="property-label"><g:message code="systemProcedure.templateName.label" default="Template Name" /></span>
					
						<span class="property-value" aria-labelledby="templateName-label"><g:fieldValue bean="${systemProcedureInstance}" field="templateName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemProcedureInstance?.appendActions}">
				<li class="fieldcontain">
					<span id="appendActions-label" class="property-label"><g:message code="systemProcedure.appendActions.label" default="Append Actions" /></span>
					
						<span class="property-value" aria-labelledby="appendActions-label"><g:fieldValue bean="${systemProcedureInstance}" field="appendActions"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemProcedureInstance?.previous}">
				<li class="fieldcontain">
					<span id="previous-label" class="property-label"><g:message code="systemProcedure.previous.label" default="Previous" /></span>
					
						<span class="property-value" aria-labelledby="previous-label"><g:link controller="systemProcedure" action="show" id="${systemProcedureInstance?.previous?.id}">${systemProcedureInstance?.previous?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemProcedureInstance?.next}">
				<li class="fieldcontain">
					<span id="next-label" class="property-label"><g:message code="systemProcedure.next.label" default="Next" /></span>
					
						<span class="property-value" aria-labelledby="next-label"><g:link controller="systemProcedure" action="show" id="${systemProcedureInstance?.next?.id}">${systemProcedureInstance?.next?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:systemProcedureInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${systemProcedureInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
