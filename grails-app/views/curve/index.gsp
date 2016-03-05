
<%@ page import="cn.edu.cup.base.Curve" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curve.label', default: 'Curve')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-curve" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-curve" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="alias" title="${message(code: 'curve.alias.label', default: 'Alias')}" />
					
						<g:sortableColumn property="xLabel" title="${message(code: 'curve.xLabel.label', default: 'X Label')}" />
					
						<g:sortableColumn property="xUnit" title="${message(code: 'curve.xUnit.label', default: 'X Unit')}" />
					
						<g:sortableColumn property="yLabel" title="${message(code: 'curve.yLabel.label', default: 'Y Label')}" />
					
						<g:sortableColumn property="yUnit" title="${message(code: 'curve.yUnit.label', default: 'Y Unit')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${curveInstanceList}" status="i" var="curveInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${curveInstance.id}">${fieldValue(bean: curveInstance, field: "alias")}</g:link></td>
					
						<td>${fieldValue(bean: curveInstance, field: "xLabel")}</td>
					
						<td>${fieldValue(bean: curveInstance, field: "xUnit")}</td>
					
						<td>${fieldValue(bean: curveInstance, field: "yLabel")}</td>
					
						<td>${fieldValue(bean: curveInstance, field: "yUnit")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${curveInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
