
<%@ page import="cn.edu.cup.unit.QuantityUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quantityUnit.label', default: 'QuantityUnit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-quantityUnit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-quantityUnit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list quantityUnit">
			
				<g:if test="${quantityUnitInstance?.unitName}">
				<li class="fieldcontain">
					<span id="unitName-label" class="property-label"><g:message code="quantityUnit.unitName.label" default="Unit Name" /></span>
					
						<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${quantityUnitInstance}" field="unitName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quantityUnitInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="quantityUnit.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${quantityUnitInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quantityUnitInstance?.label}">
				<li class="fieldcontain">
					<span id="label-label" class="property-label"><g:message code="quantityUnit.label.label" default="Label" /></span>
					
						<span class="property-value" aria-labelledby="label-label"><g:fieldValue bean="${quantityUnitInstance}" field="label"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quantityUnitInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="quantityUnit.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${quantityUnitInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quantityUnitInstance?.factorA}">
				<li class="fieldcontain">
					<span id="factorA-label" class="property-label"><g:message code="quantityUnit.factorA.label" default="Factor A" /></span>
					
						<span class="property-value" aria-labelledby="factorA-label"><g:fieldValue bean="${quantityUnitInstance}" field="factorA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quantityUnitInstance?.factorB}">
				<li class="fieldcontain">
					<span id="factorB-label" class="property-label"><g:message code="quantityUnit.factorB.label" default="Factor B" /></span>
					
						<span class="property-value" aria-labelledby="factorB-label"><g:fieldValue bean="${quantityUnitInstance}" field="factorB"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quantityUnitInstance?.physicalQuantity}">
				<li class="fieldcontain">
					<span id="physicalQuantity-label" class="property-label"><g:message code="quantityUnit.physicalQuantity.label" default="Physical Quantity" /></span>
					
						<span class="property-value" aria-labelledby="physicalQuantity-label"><g:link controller="physicalQuantity" action="show" id="${quantityUnitInstance?.physicalQuantity?.id}">${quantityUnitInstance?.physicalQuantity?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${quantityUnitInstance?.unitSystem}">
				<li class="fieldcontain">
					<span id="unitSystem-label" class="property-label"><g:message code="quantityUnit.unitSystem.label" default="Unit System" /></span>
					
						<span class="property-value" aria-labelledby="unitSystem-label"><g:link controller="unitSystem" action="show" id="${quantityUnitInstance?.unitSystem?.id}">${quantityUnitInstance?.unitSystem?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:quantityUnitInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${quantityUnitInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
