
<%@ page import="cn.edu.cup.ogts.equipment.CompressorCurveTest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compressorCurveTest.label', default: 'CompressorCurveTest')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compressorCurveTest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compressorCurveTest" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="compressorCurveTest.compressor.label" default="Compressor" /></th>
					
						<th><g:message code="compressorCurveTest.gas.label" default="Gas" /></th>
					
						<g:sortableColumn property="pressure" title="${message(code: 'compressorCurveTest.pressure.label', default: 'Pressure')}" />
					
						<g:sortableColumn property="pressureUnit" title="${message(code: 'compressorCurveTest.pressureUnit.label', default: 'Pressure Unit')}" />
					
						<g:sortableColumn property="temperatrue" title="${message(code: 'compressorCurveTest.temperatrue.label', default: 'Temperatrue')}" />
					
						<g:sortableColumn property="temperatureUnit" title="${message(code: 'compressorCurveTest.temperatureUnit.label', default: 'Temperature Unit')}" />
					
						<g:sortableColumn property="speed" title="${message(code: 'compressorCurveTest.speed.label', default: 'Speed')}" />
					
						<g:sortableColumn property="speedUnit" title="${message(code: 'compressorCurveTest.speedUnit.label', default: 'Speed Unit')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${compressorCurveTestInstanceList}" status="i" var="compressorCurveTestInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${compressorCurveTestInstance.id}">${fieldValue(bean: compressorCurveTestInstance, field: "compressor")}</g:link></td>
					
						<td>${fieldValue(bean: compressorCurveTestInstance, field: "gas")}</td>
					
						<td>${fieldValue(bean: compressorCurveTestInstance, field: "pressure")}</td>
					
						<td>${fieldValue(bean: compressorCurveTestInstance, field: "pressureUnit")}</td>
					
						<td>${fieldValue(bean: compressorCurveTestInstance, field: "temperatrue")}</td>
					
						<td>${fieldValue(bean: compressorCurveTestInstance, field: "temperatureUnit")}</td>
					
						<td>${fieldValue(bean: compressorCurveTestInstance, field: "speed")}</td>
					
						<td>${fieldValue(bean: compressorCurveTestInstance, field: "speedUnit")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${compressorCurveTestInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
