
<%@ page import="cn.edu.cup.dictionary.KeyWord" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'keyWord.label', default: 'KeyWord')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-keyWord" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-keyWord" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="keyContext" title="${message(code: 'keyWord.keyContext.label', default: 'Key Context')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'keyWord.description.label', default: 'Description')}" />
					
						<th><g:message code="keyWord.physicalQuantity.label" default="Physical Quantity" /></th>
					
						<th><g:message code="keyWord.quantityUnit.label" default="Quantity Unit" /></th>
					
						<g:sortableColumn property="isNullable" title="${message(code: 'keyWord.isNullable.label', default: 'Is Nullable')}" />
					
						<th><g:message code="keyWord.valueType.label" default="Value Type" /></th>
					
						<g:sortableColumn property="keyOrder" title="${message(code: 'keyWord.keyOrder.label', default: 'Key Order')}" />
					
						<g:sortableColumn property="appendValue" title="${message(code: 'keyWord.appendValue.label', default: 'Append Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${keyWordInstanceList}" status="i" var="keyWordInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${keyWordInstance.id}">${fieldValue(bean: keyWordInstance, field: "keyContext")}</g:link></td>
					
						<td>${fieldValue(bean: keyWordInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: keyWordInstance, field: "physicalQuantity")}</td>
					
						<td>${fieldValue(bean: keyWordInstance, field: "quantityUnit")}</td>
					
						<td><g:formatBoolean boolean="${keyWordInstance.isNullable}" /></td>
					
						<td>${fieldValue(bean: keyWordInstance, field: "valueType")}</td>
					
						<td>${fieldValue(bean: keyWordInstance, field: "keyOrder")}</td>
					
						<td>${fieldValue(bean: keyWordInstance, field: "appendValue")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${keyWordInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
