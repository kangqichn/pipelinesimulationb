
<%@ page import="cn.edu.cup.commondata.CommonDataProject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commonDataProject.label', default: 'CommonDataProject')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-commonDataProject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-commonDataProject" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="commonDataProject.project.label" default="Project" /></th>
					
						<g:sortableColumn property="description" title="${message(code: 'commonDataProject.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="dataId" title="${message(code: 'commonDataProject.dataId.label', default: 'Data Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commonDataProjectInstanceList}" status="i" var="commonDataProjectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commonDataProjectInstance.id}">${fieldValue(bean: commonDataProjectInstance, field: "project")}</g:link></td>
					
						<td>${fieldValue(bean: commonDataProjectInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: commonDataProjectInstance, field: "dataId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${commonDataProjectInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
