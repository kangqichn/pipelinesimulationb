
<%@ page import="cn.edu.cup.base.CurvePoint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curvePoint.label', default: 'CurvePoint')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-curvePoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-curvePoint" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="curvePoint.curve.label" default="Curve" /></th>
					
						<g:sortableColumn property="x" title="${message(code: 'curvePoint.x.label', default: 'X')}" />
					
						<g:sortableColumn property="y" title="${message(code: 'curvePoint.y.label', default: 'Y')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${curvePointInstanceList}" status="i" var="curvePointInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${curvePointInstance.id}">${fieldValue(bean: curvePointInstance, field: "curve")}</g:link></td>
					
						<td>${fieldValue(bean: curvePointInstance, field: "x")}</td>
					
						<td>${fieldValue(bean: curvePointInstance, field: "y")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${curvePointInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
