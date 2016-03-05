
<%@ page import="cn.edu.cup.dictionary.ObjectMapping" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'objectMapping.label', default: 'ObjectMapping')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-objectMapping" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-objectMapping" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="userName" title="${message(code: 'objectMapping.userName.label', default: 'User Name')}" />
					
						<g:sortableColumn property="className" title="${message(code: 'objectMapping.className.label', default: 'Class Name')}" />
					
						<th><g:message code="objectMapping.keyWord.label" default="Key Word" /></th>
					
						<g:sortableColumn property="propertyName" title="${message(code: 'objectMapping.propertyName.label', default: 'Property Name')}" />
					
						<g:sortableColumn property="dataType" title="${message(code: 'objectMapping.dataType.label', default: 'Data Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${objectMappingInstanceList}" status="i" var="objectMappingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${objectMappingInstance.id}">${fieldValue(bean: objectMappingInstance, field: "userName")}</g:link></td>
					
						<td>${fieldValue(bean: objectMappingInstance, field: "className")}</td>
					
						<td>${fieldValue(bean: objectMappingInstance, field: "keyWord")}</td>
					
						<td>${fieldValue(bean: objectMappingInstance, field: "propertyName")}</td>
					
						<td>${fieldValue(bean: objectMappingInstance, field: "dataType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${objectMappingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
