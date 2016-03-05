
<%@ page import="cn.edu.cup.fluid.gas.GasComponentFamily" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponentFamily.label', default: 'GasComponentFamily')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-gasComponentFamily" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gasComponentFamily" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gasComponentFamily">
			
				<g:if test="${gasComponentFamilyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="gasComponentFamily.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${gasComponentFamilyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentFamilyInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="gasComponentFamily.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${gasComponentFamilyInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentFamilyInstance?.gasComponent}">
				<li class="fieldcontain">
					<span id="gasComponent-label" class="property-label"><g:message code="gasComponentFamily.gasComponent.label" default="Gas Component" /></span>
					
						<g:each in="${gasComponentFamilyInstance.gasComponent}" var="g">
						<span class="property-value" aria-labelledby="gasComponent-label"><g:link controller="gasComponent" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:gasComponentFamilyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${gasComponentFamilyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
