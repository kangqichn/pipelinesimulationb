
<%@ page import="cn.edu.cup.base.Curve" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curve.label', default: 'Curve')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-curve" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-curve" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curve">
			
				<g:if test="${curveInstance?.alias}">
				<li class="fieldcontain">
					<span id="alias-label" class="property-label"><g:message code="curve.alias.label" default="Alias" /></span>
					
						<span class="property-value" aria-labelledby="alias-label"><g:fieldValue bean="${curveInstance}" field="alias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curveInstance?.xLabel}">
				<li class="fieldcontain">
					<span id="xLabel-label" class="property-label"><g:message code="curve.xLabel.label" default="X Label" /></span>
					
						<span class="property-value" aria-labelledby="xLabel-label"><g:fieldValue bean="${curveInstance}" field="xLabel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curveInstance?.xUnit}">
				<li class="fieldcontain">
					<span id="xUnit-label" class="property-label"><g:message code="curve.xUnit.label" default="X Unit" /></span>
					
						<span class="property-value" aria-labelledby="xUnit-label"><g:fieldValue bean="${curveInstance}" field="xUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curveInstance?.yLabel}">
				<li class="fieldcontain">
					<span id="yLabel-label" class="property-label"><g:message code="curve.yLabel.label" default="Y Label" /></span>
					
						<span class="property-value" aria-labelledby="yLabel-label"><g:fieldValue bean="${curveInstance}" field="yLabel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curveInstance?.yUnit}">
				<li class="fieldcontain">
					<span id="yUnit-label" class="property-label"><g:message code="curve.yUnit.label" default="Y Unit" /></span>
					
						<span class="property-value" aria-labelledby="yUnit-label"><g:fieldValue bean="${curveInstance}" field="yUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curveInstance?.points}">
				<li class="fieldcontain">
					<span id="points-label" class="property-label"><g:message code="curve.points.label" default="Points" /></span>
					
						<g:each in="${curveInstance.points}" var="p">
						<span class="property-value" aria-labelledby="points-label"><g:link controller="curvePoint" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:curveInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${curveInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
