
<%@ page import="cn.edu.cup.fluid.gas.GasComponent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponent.label', default: 'GasComponent')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-gasComponent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gasComponent" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gasComponent">
			
				<g:if test="${gasComponentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="gasComponent.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${gasComponentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="gasComponent.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${gasComponentInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentInstance?.casNumber}">
				<li class="fieldcontain">
					<span id="casNumber-label" class="property-label"><g:message code="gasComponent.casNumber.label" default="Cas Number" /></span>
					
						<span class="property-value" aria-labelledby="casNumber-label"><g:fieldValue bean="${gasComponentInstance}" field="casNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentInstance?.chemFormula}">
				<li class="fieldcontain">
					<span id="chemFormula-label" class="property-label"><g:message code="gasComponent.chemFormula.label" default="Chem Formula" /></span>
					
						<span class="property-value" aria-labelledby="chemFormula-label"><g:fieldValue bean="${gasComponentInstance}" field="chemFormula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentInstance?.unifacStructure}">
				<li class="fieldcontain">
					<span id="unifacStructure-label" class="property-label"><g:message code="gasComponent.unifacStructure.label" default="Unifac Structure" /></span>
					
						<span class="property-value" aria-labelledby="unifacStructure-label"><g:fieldValue bean="${gasComponentInstance}" field="unifacStructure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentInstance?.alias}">
				<li class="fieldcontain">
					<span id="alias-label" class="property-label"><g:message code="gasComponent.alias.label" default="Alias" /></span>
					
						<span class="property-value" aria-labelledby="alias-label"><g:fieldValue bean="${gasComponentInstance}" field="alias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentInstance?.isPseudo}">
				<li class="fieldcontain">
					<span id="isPseudo-label" class="property-label"><g:message code="gasComponent.isPseudo.label" default="Is Pseudo" /></span>
					
						<span class="property-value" aria-labelledby="isPseudo-label"><g:formatBoolean boolean="${gasComponentInstance?.isPseudo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentInstance?.gas}">
				<li class="fieldcontain">
					<span id="gas-label" class="property-label"><g:message code="gasComponent.gas.label" default="Gas" /></span>
					
						<span class="property-value" aria-labelledby="gas-label"><g:fieldValue bean="${gasComponentInstance}" field="gas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentInstance?.family}">
				<li class="fieldcontain">
					<span id="family-label" class="property-label"><g:message code="gasComponent.family.label" default="Family" /></span>
					
						<span class="property-value" aria-labelledby="family-label"><g:link controller="gasComponentFamily" action="show" id="${gasComponentInstance?.family?.id}">${gasComponentInstance?.family?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:gasComponentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${gasComponentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
