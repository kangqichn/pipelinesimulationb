
<%@ page import="cn.edu.cup.system.SystemLog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemLog.label', default: 'SystemLog')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemLog" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemLog" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="sessionId" title="${message(code: 'systemLog.sessionId.label', default: 'Session Id')}" />
					
						<g:sortableColumn property="hostIP" title="${message(code: 'systemLog.hostIP.label', default: 'Host IP')}" />
					
						<g:sortableColumn property="userName" title="${message(code: 'systemLog.userName.label', default: 'User Name')}" />
					
						<g:sortableColumn property="doing" title="${message(code: 'systemLog.doing.label', default: 'Doing')}" />
					
						<g:sortableColumn property="loginDate" title="${message(code: 'systemLog.loginDate.label', default: 'Login Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemLogInstanceList}" status="i" var="systemLogInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemLogInstance.id}">${fieldValue(bean: systemLogInstance, field: "sessionId")}</g:link></td>
					
						<td>${fieldValue(bean: systemLogInstance, field: "hostIP")}</td>
					
						<td>${fieldValue(bean: systemLogInstance, field: "userName")}</td>
					
						<td>${fieldValue(bean: systemLogInstance, field: "doing")}</td>
					
						<td><g:formatDate date="${systemLogInstance.loginDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${systemLogInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
