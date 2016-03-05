
<%@ page import="cn.edu.cup.fluid.gas.PropertyFamily" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'propertyFamily.label', default: 'PropertyFamily')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-propertyFamily" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-propertyFamily" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list propertyFamily">
			
				<g:if test="${propertyFamilyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="propertyFamily.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${propertyFamilyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyFamilyInstance?.alias}">
				<li class="fieldcontain">
					<span id="alias-label" class="property-label"><g:message code="propertyFamily.alias.label" default="Alias" /></span>
					
						<span class="property-value" aria-labelledby="alias-label"><g:fieldValue bean="${propertyFamilyInstance}" field="alias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyFamilyInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="propertyFamily.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${propertyFamilyInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyFamilyInstance?.property}">
				<li class="fieldcontain">
					<span id="property-label" class="property-label"><g:message code="propertyFamily.property.label" default="Property" /></span>
					
						<g:each in="${propertyFamilyInstance.property}" var="p">
						<span class="property-value" aria-labelledby="property-label"><g:link controller="gasComponentProperty" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:propertyFamilyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${propertyFamilyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
