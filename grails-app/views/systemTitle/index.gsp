
<%@ page import="cn.edu.cup.system.SystemTitle" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemTitle.label', default: 'SystemTitle')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemTitle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemTitle" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="applicationLogo" title="${message(code: 'systemTitle.applicationLogo.label', default: 'Application Logo')}" />
					
						<g:sortableColumn property="applicationTitle" title="${message(code: 'systemTitle.applicationTitle.label', default: 'Application Title')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemTitleInstanceList}" status="i" var="systemTitleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemTitleInstance.id}">${fieldValue(bean: systemTitleInstance, field: "applicationLogo")}</g:link></td>
					
						<td>${fieldValue(bean: systemTitleInstance, field: "applicationTitle")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${systemTitleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
