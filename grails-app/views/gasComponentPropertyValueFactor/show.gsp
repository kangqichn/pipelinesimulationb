
<%@ page import="cn.edu.cup.fluid.gas.GasComponentPropertyValueFactor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponentPropertyValueFactor.label', default: 'GasComponentPropertyValueFactor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-gasComponentPropertyValueFactor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gasComponentPropertyValueFactor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gasComponentPropertyValueFactor">
			
				<g:if test="${gasComponentPropertyValueFactorInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="gasComponentPropertyValueFactor.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${gasComponentPropertyValueFactorInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentPropertyValueFactorInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="gasComponentPropertyValueFactor.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${gasComponentPropertyValueFactorInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gasComponentPropertyValueFactorInstance?.gasComponentPropertyValue}">
				<li class="fieldcontain">
					<span id="gasComponentPropertyValue-label" class="property-label"><g:message code="gasComponentPropertyValueFactor.gasComponentPropertyValue.label" default="Gas Component Property Value" /></span>
					
						<span class="property-value" aria-labelledby="gasComponentPropertyValue-label"><g:link controller="gasComponentPropertyValue" action="show" id="${gasComponentPropertyValueFactorInstance?.gasComponentPropertyValue?.id}">${gasComponentPropertyValueFactorInstance?.gasComponentPropertyValue?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:gasComponentPropertyValueFactorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${gasComponentPropertyValueFactorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
