
<%@ page import="cn.edu.cup.fluid.gas.FluidGas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fluidGas.label', default: 'FluidGas')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fluidGas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fluidGas" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fluidGas">
			
				<g:if test="${fluidGasInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="fluidGas.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${fluidGasInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fluidGasInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="fluidGas.comment.label" default="Comment" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${fluidGasInstance}" field="comment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fluidGasInstance?.moleMass}">
				<li class="fieldcontain">
					<span id="moleMass-label" class="property-label"><g:message code="fluidGas.moleMass.label" default="Mole Mass" /></span>
					
						<span class="property-value" aria-labelledby="moleMass-label"><g:fieldValue bean="${fluidGasInstance}" field="moleMass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fluidGasInstance?.moleMassUnit}">
				<li class="fieldcontain">
					<span id="moleMassUnit-label" class="property-label"><g:message code="fluidGas.moleMassUnit.label" default="Mole Mass Unit" /></span>
					
						<span class="property-value" aria-labelledby="moleMassUnit-label"><g:fieldValue bean="${fluidGasInstance}" field="moleMassUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fluidGasInstance?.componentFactor}">
				<li class="fieldcontain">
					<span id="componentFactor-label" class="property-label"><g:message code="fluidGas.componentFactor.label" default="Component Factor" /></span>
					
						<g:each in="${fluidGasInstance.componentFactor}" var="c">
						<span class="property-value" aria-labelledby="componentFactor-label"><g:link controller="componentFactor" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:fluidGasInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${fluidGasInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
