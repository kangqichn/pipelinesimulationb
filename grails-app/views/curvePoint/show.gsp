
<%@ page import="cn.edu.cup.base.CurvePoint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curvePoint.label', default: 'CurvePoint')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-curvePoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-curvePoint" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curvePoint">
			
				<g:if test="${curvePointInstance?.curve}">
				<li class="fieldcontain">
					<span id="curve-label" class="property-label"><g:message code="curvePoint.curve.label" default="Curve" /></span>
					
						<span class="property-value" aria-labelledby="curve-label"><g:link controller="curve" action="show" id="${curvePointInstance?.curve?.id}">${curvePointInstance?.curve?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${curvePointInstance?.x}">
				<li class="fieldcontain">
					<span id="x-label" class="property-label"><g:message code="curvePoint.x.label" default="X" /></span>
					
						<span class="property-value" aria-labelledby="x-label"><g:fieldValue bean="${curvePointInstance}" field="x"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curvePointInstance?.y}">
				<li class="fieldcontain">
					<span id="y-label" class="property-label"><g:message code="curvePoint.y.label" default="Y" /></span>
					
						<span class="property-value" aria-labelledby="y-label"><g:fieldValue bean="${curvePointInstance}" field="y"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:curvePointInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${curvePointInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
