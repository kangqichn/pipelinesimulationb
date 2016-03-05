
<%@ page import="cn.edu.cup.fluid.gas.GasComponentPropertyValueFactor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponentPropertyValueFactor.label', default: 'GasComponentPropertyValueFactor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-gasComponentPropertyValueFactor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-gasComponentPropertyValueFactor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'gasComponentPropertyValueFactor.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="value" title="${message(code: 'gasComponentPropertyValueFactor.value.label', default: 'Value')}" />
					
						<th><g:message code="gasComponentPropertyValueFactor.gasComponentPropertyValue.label" default="Gas Component Property Value" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gasComponentPropertyValueFactorInstanceList}" status="i" var="gasComponentPropertyValueFactorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gasComponentPropertyValueFactorInstance.id}">${fieldValue(bean: gasComponentPropertyValueFactorInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: gasComponentPropertyValueFactorInstance, field: "value")}</td>
					
						<td>${fieldValue(bean: gasComponentPropertyValueFactorInstance, field: "gasComponentPropertyValue")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${gasComponentPropertyValueFactorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
