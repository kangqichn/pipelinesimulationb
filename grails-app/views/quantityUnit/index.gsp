
<%@ page import="cn.edu.cup.unit.QuantityUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quantityUnit.label', default: 'QuantityUnit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-quantityUnit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-quantityUnit" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="unitName" title="${message(code: 'quantityUnit.unitName.label', default: 'Unit Name')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'quantityUnit.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="label" title="${message(code: 'quantityUnit.label.label', default: 'Label')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'quantityUnit.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="factorA" title="${message(code: 'quantityUnit.factorA.label', default: 'Factor A')}" />
					
						<g:sortableColumn property="factorB" title="${message(code: 'quantityUnit.factorB.label', default: 'Factor B')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${quantityUnitInstanceList}" status="i" var="quantityUnitInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${quantityUnitInstance.id}">${fieldValue(bean: quantityUnitInstance, field: "unitName")}</g:link></td>
					
						<td>${fieldValue(bean: quantityUnitInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: quantityUnitInstance, field: "label")}</td>
					
						<td>${fieldValue(bean: quantityUnitInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: quantityUnitInstance, field: "factorA")}</td>
					
						<td>${fieldValue(bean: quantityUnitInstance, field: "factorB")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${quantityUnitInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
