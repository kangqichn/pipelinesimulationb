
<%@ page import="cn.edu.cup.producing.ProductionData" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productionData.label', default: 'ProductionData')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productionData" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-productionData" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productionData">
			
				<g:if test="${productionDataInstance?.dateFlag}">
				<li class="fieldcontain">
					<span id="dateFlag-label" class="property-label"><g:message code="productionData.dateFlag.label" default="Date Flag" /></span>
					
						<span class="property-value" aria-labelledby="dateFlag-label"><g:formatDate date="${productionDataInstance?.dateFlag}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productionDataInstance?.flowrateGas}">
				<li class="fieldcontain">
					<span id="flowrateGas-label" class="property-label"><g:message code="productionData.flowrateGas.label" default="Flowrate Gas" /></span>
					
						<span class="property-value" aria-labelledby="flowrateGas-label"><g:fieldValue bean="${productionDataInstance}" field="flowrateGas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productionDataInstance?.flowrateOil}">
				<li class="fieldcontain">
					<span id="flowrateOil-label" class="property-label"><g:message code="productionData.flowrateOil.label" default="Flowrate Oil" /></span>
					
						<span class="property-value" aria-labelledby="flowrateOil-label"><g:fieldValue bean="${productionDataInstance}" field="flowrateOil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productionDataInstance?.flowrateWater}">
				<li class="fieldcontain">
					<span id="flowrateWater-label" class="property-label"><g:message code="productionData.flowrateWater.label" default="Flowrate Water" /></span>
					
						<span class="property-value" aria-labelledby="flowrateWater-label"><g:fieldValue bean="${productionDataInstance}" field="flowrateWater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productionDataInstance?.pressure}">
				<li class="fieldcontain">
					<span id="pressure-label" class="property-label"><g:message code="productionData.pressure.label" default="Pressure" /></span>
					
						<span class="property-value" aria-labelledby="pressure-label"><g:fieldValue bean="${productionDataInstance}" field="pressure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productionDataInstance?.temperature}">
				<li class="fieldcontain">
					<span id="temperature-label" class="property-label"><g:message code="productionData.temperature.label" default="Temperature" /></span>
					
						<span class="property-value" aria-labelledby="temperature-label"><g:fieldValue bean="${productionDataInstance}" field="temperature"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productionDataInstance?.well}">
				<li class="fieldcontain">
					<span id="well-label" class="property-label"><g:message code="productionData.well.label" default="Well" /></span>
					
						<span class="property-value" aria-labelledby="well-label"><g:link controller="well" action="show" id="${productionDataInstance?.well?.id}">${productionDataInstance?.well?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productionDataInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productionDataInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
