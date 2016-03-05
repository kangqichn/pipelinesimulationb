
<%@ page import="cn.edu.cup.ogts.equipment.Compressor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compressor.label', default: 'Compressor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compressor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compressor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'compressor.name.label', default: 'Name')}" />
					
						<th><g:message code="compressor.compressorType.label" default="Compressor Type" /></th>
					
						<g:sortableColumn property="driverName" title="${message(code: 'compressor.driverName.label', default: 'Driver Name')}" />
					
						<g:sortableColumn property="driverType" title="${message(code: 'compressor.driverType.label', default: 'Driver Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${compressorInstanceList}" status="i" var="compressorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${compressorInstance.id}">${fieldValue(bean: compressorInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: compressorInstance, field: "compressorType")}</td>
					
						<td>${fieldValue(bean: compressorInstance, field: "driverName")}</td>
					
						<td>${fieldValue(bean: compressorInstance, field: "driverType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${compressorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
