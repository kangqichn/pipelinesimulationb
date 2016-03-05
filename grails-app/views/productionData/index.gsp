
<%@ page import="cn.edu.cup.producing.ProductionData" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productionData.label', default: 'ProductionData')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productionData" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productionData" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dateFlag" title="${message(code: 'productionData.dateFlag.label', default: 'Date Flag')}" />
					
						<g:sortableColumn property="flowrateGas" title="${message(code: 'productionData.flowrateGas.label', default: 'Flowrate Gas')}" />
					
						<g:sortableColumn property="flowrateOil" title="${message(code: 'productionData.flowrateOil.label', default: 'Flowrate Oil')}" />
					
						<g:sortableColumn property="flowrateWater" title="${message(code: 'productionData.flowrateWater.label', default: 'Flowrate Water')}" />
					
						<g:sortableColumn property="pressure" title="${message(code: 'productionData.pressure.label', default: 'Pressure')}" />
					
						<g:sortableColumn property="temperature" title="${message(code: 'productionData.temperature.label', default: 'Temperature')}" />
					
						<th><g:message code="productionData.well.label" default="Well" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productionDataInstanceList}" status="i" var="productionDataInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productionDataInstance.id}">${fieldValue(bean: productionDataInstance, field: "dateFlag")}</g:link></td>
					
						<td>${fieldValue(bean: productionDataInstance, field: "flowrateGas")}</td>
					
						<td>${fieldValue(bean: productionDataInstance, field: "flowrateOil")}</td>
					
						<td>${fieldValue(bean: productionDataInstance, field: "flowrateWater")}</td>
					
						<td>${fieldValue(bean: productionDataInstance, field: "pressure")}</td>
					
						<td>${fieldValue(bean: productionDataInstance, field: "temperature")}</td>
					
						<td>${fieldValue(bean: productionDataInstance, field: "well")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${productionDataInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
