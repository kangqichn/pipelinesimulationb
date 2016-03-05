
<%@ page import="cn.edu.cup.fluid.gas.ComponentFactor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'componentFactor.label', default: 'ComponentFactor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-componentFactor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-componentFactor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list componentFactor">
			
				<g:if test="${componentFactorInstance?.gasComponent}">
				<li class="fieldcontain">
					<span id="gasComponent-label" class="property-label"><g:message code="componentFactor.gasComponent.label" default="Gas Component" /></span>
					
						<span class="property-value" aria-labelledby="gasComponent-label"><g:link controller="gasComponent" action="show" id="${componentFactorInstance?.gasComponent?.id}">${componentFactorInstance?.gasComponent?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${componentFactorInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="componentFactor.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${componentFactorInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${componentFactorInstance?.fluidGas}">
				<li class="fieldcontain">
					<span id="fluidGas-label" class="property-label"><g:message code="componentFactor.fluidGas.label" default="Fluid Gas" /></span>
					
						<span class="property-value" aria-labelledby="fluidGas-label"><g:link controller="fluidGas" action="show" id="${componentFactorInstance?.fluidGas?.id}">${componentFactorInstance?.fluidGas?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:componentFactorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${componentFactorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
