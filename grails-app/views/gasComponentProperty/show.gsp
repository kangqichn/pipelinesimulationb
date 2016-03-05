
<%@ page import="cn.edu.cup.fluid.gas.GasComponentProperty" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponentProperty.label', default: 'GasComponentProperty')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-gasComponentProperty" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gasComponentProperty" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gasComponentProperty">
			
				<g:if test="${gasComponentPropertyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="gasComponentProperty.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${gasComponentPropertyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentPropertyInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="gasComponentProperty.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${gasComponentPropertyInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentPropertyInstance?.alias}">
				<li class="fieldcontain">
					<span id="alias-label" class="property-label"><g:message code="gasComponentProperty.alias.label" default="Alias" /></span>
					
						<span class="property-value" aria-labelledby="alias-label"><g:fieldValue bean="${gasComponentPropertyInstance}" field="alias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentPropertyInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="gasComponentProperty.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:fieldValue bean="${gasComponentPropertyInstance}" field="unit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentPropertyInstance?.propertyFamily}">
				<li class="fieldcontain">
					<span id="propertyFamily-label" class="property-label"><g:message code="gasComponentProperty.propertyFamily.label" default="Property Family" /></span>
					
						<span class="property-value" aria-labelledby="propertyFamily-label"><g:link controller="propertyFamily" action="show" id="${gasComponentPropertyInstance?.propertyFamily?.id}">${gasComponentPropertyInstance?.propertyFamily?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:gasComponentPropertyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${gasComponentPropertyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
