
<%@ page import="cn.edu.cup.ogts.equipment.CompressorCurveTest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compressorCurveTest.label', default: 'CompressorCurveTest')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-compressorCurveTest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-compressorCurveTest" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list compressorCurveTest">
			
				<g:if test="${compressorCurveTestInstance?.compressor}">
				<li class="fieldcontain">
					<span id="compressor-label" class="property-label"><g:message code="compressorCurveTest.compressor.label" default="Compressor" /></span>
					
						<span class="property-value" aria-labelledby="compressor-label"><g:link controller="compressor" action="show" id="${compressorCurveTestInstance?.compressor?.id}">${compressorCurveTestInstance?.compressor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.gas}">
				<li class="fieldcontain">
					<span id="gas-label" class="property-label"><g:message code="compressorCurveTest.gas.label" default="Gas" /></span>
					
						<span class="property-value" aria-labelledby="gas-label"><g:link controller="fluidGas" action="show" id="${compressorCurveTestInstance?.gas?.id}">${compressorCurveTestInstance?.gas?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.pressure}">
				<li class="fieldcontain">
					<span id="pressure-label" class="property-label"><g:message code="compressorCurveTest.pressure.label" default="Pressure" /></span>
					
						<span class="property-value" aria-labelledby="pressure-label"><g:fieldValue bean="${compressorCurveTestInstance}" field="pressure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.pressureUnit}">
				<li class="fieldcontain">
					<span id="pressureUnit-label" class="property-label"><g:message code="compressorCurveTest.pressureUnit.label" default="Pressure Unit" /></span>
					
						<span class="property-value" aria-labelledby="pressureUnit-label"><g:fieldValue bean="${compressorCurveTestInstance}" field="pressureUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.temperatrue}">
				<li class="fieldcontain">
					<span id="temperatrue-label" class="property-label"><g:message code="compressorCurveTest.temperatrue.label" default="Temperatrue" /></span>
					
						<span class="property-value" aria-labelledby="temperatrue-label"><g:fieldValue bean="${compressorCurveTestInstance}" field="temperatrue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.temperatureUnit}">
				<li class="fieldcontain">
					<span id="temperatureUnit-label" class="property-label"><g:message code="compressorCurveTest.temperatureUnit.label" default="Temperature Unit" /></span>
					
						<span class="property-value" aria-labelledby="temperatureUnit-label"><g:fieldValue bean="${compressorCurveTestInstance}" field="temperatureUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.speed}">
				<li class="fieldcontain">
					<span id="speed-label" class="property-label"><g:message code="compressorCurveTest.speed.label" default="Speed" /></span>
					
						<span class="property-value" aria-labelledby="speed-label"><g:fieldValue bean="${compressorCurveTestInstance}" field="speed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.speedUnit}">
				<li class="fieldcontain">
					<span id="speedUnit-label" class="property-label"><g:message code="compressorCurveTest.speedUnit.label" default="Speed Unit" /></span>
					
						<span class="property-value" aria-labelledby="speedUnit-label"><g:fieldValue bean="${compressorCurveTestInstance}" field="speedUnit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.testDate}">
				<li class="fieldcontain">
					<span id="testDate-label" class="property-label"><g:message code="compressorCurveTest.testDate.label" default="Test Date" /></span>
					
						<span class="property-value" aria-labelledby="testDate-label"><g:formatDate date="${compressorCurveTestInstance?.testDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="compressorCurveTest.comment.label" default="Comment" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${compressorCurveTestInstance}" field="comment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compressorCurveTestInstance?.curve}">
				<li class="fieldcontain">
					<span id="curve-label" class="property-label"><g:message code="compressorCurveTest.curve.label" default="Curve" /></span>
					
						<span class="property-value" aria-labelledby="curve-label"><g:link controller="curve" action="show" id="${compressorCurveTestInstance?.curve?.id}">${compressorCurveTestInstance?.curve?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:compressorCurveTestInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${compressorCurveTestInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
