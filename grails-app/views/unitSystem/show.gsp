
<%@ page import="cn.edu.cup.unit.UnitSystem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitSystem.label', default: 'UnitSystem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unitSystem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unitSystem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unitSystem">
			
				<g:if test="${unitSystemInstance?.systemName}">
				<li class="fieldcontain">
					<span id="systemName-label" class="property-label"><g:message code="unitSystem.systemName.label" default="System Name" /></span>
					
						<span class="property-value" aria-labelledby="systemName-label"><g:fieldValue bean="${unitSystemInstance}" field="systemName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitSystemInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="unitSystem.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${unitSystemInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitSystemInstance?.quantityUnits}">
				<li class="fieldcontain">
					<span id="quantityUnits-label" class="property-label"><g:message code="unitSystem.quantityUnits.label" default="Quantity Units" /></span>
					
						<g:each in="${unitSystemInstance.quantityUnits}" var="q">
						<span class="property-value" aria-labelledby="quantityUnits-label"><g:link controller="quantityUnit" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:unitSystemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${unitSystemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
