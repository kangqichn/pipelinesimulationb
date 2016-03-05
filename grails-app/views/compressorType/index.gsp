
<%@ page import="cn.edu.cup.ogts.equipment.CompressorType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compressorType.label', default: 'CompressorType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compressorType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compressorType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="manufacturer" title="${message(code: 'compressorType.manufacturer.label', default: 'Manufacturer')}" />
					
						<g:sortableColumn property="compressorModel" title="${message(code: 'compressorType.compressorModel.label', default: 'Compressor Model')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${compressorTypeInstanceList}" status="i" var="compressorTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${compressorTypeInstance.id}">${fieldValue(bean: compressorTypeInstance, field: "manufacturer")}</g:link></td>
					
						<td>${fieldValue(bean: compressorTypeInstance, field: "compressorModel")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${compressorTypeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
