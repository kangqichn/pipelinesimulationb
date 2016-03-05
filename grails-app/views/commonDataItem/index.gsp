
<%@ page import="cn.edu.cup.commondata.CommonDataItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commonDataItem.label', default: 'CommonDataItem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-commonDataItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-commonDataItem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="commonDataItem.labelKey.label" default="Label Key" /></th>
					
						<g:sortableColumn property="value" title="${message(code: 'commonDataItem.value.label', default: 'Value')}" />
					
						<th><g:message code="commonDataItem.project.label" default="Project" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commonDataItemInstanceList}" status="i" var="commonDataItemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commonDataItemInstance.id}">${fieldValue(bean: commonDataItemInstance, field: "labelKey")}</g:link></td>
					
						<td>${fieldValue(bean: commonDataItemInstance, field: "value")}</td>
					
						<td>${fieldValue(bean: commonDataItemInstance, field: "project")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${commonDataItemInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
