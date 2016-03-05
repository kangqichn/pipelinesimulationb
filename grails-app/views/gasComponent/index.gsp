
<%@ page import="cn.edu.cup.fluid.gas.GasComponent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'gasComponent.label', default: 'GasComponent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-gasComponent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-gasComponent" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'gasComponent.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'gasComponent.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="casNumber" title="${message(code: 'gasComponent.casNumber.label', default: 'Cas Number')}" />
					
						<g:sortableColumn property="chemFormula" title="${message(code: 'gasComponent.chemFormula.label', default: 'Chem Formula')}" />
					
						<g:sortableColumn property="unifacStructure" title="${message(code: 'gasComponent.unifacStructure.label', default: 'Unifac Structure')}" />
					
						<g:sortableColumn property="alias" title="${message(code: 'gasComponent.alias.label', default: 'Alias')}" />
					
						<g:sortableColumn property="isPseudo" title="${message(code: 'gasComponent.isPseudo.label', default: 'Is Pseudo')}" />
					
						<g:sortableColumn property="gas" title="${message(code: 'gasComponent.gas.label', default: 'Gas')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gasComponentInstanceList}" status="i" var="gasComponentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gasComponentInstance.id}">${fieldValue(bean: gasComponentInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: gasComponentInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: gasComponentInstance, field: "casNumber")}</td>
					
						<td>${fieldValue(bean: gasComponentInstance, field: "chemFormula")}</td>
					
						<td>${fieldValue(bean: gasComponentInstance, field: "unifacStructure")}</td>
					
						<td>${fieldValue(bean: gasComponentInstance, field: "alias")}</td>
					
						<td><g:formatBoolean boolean="${gasComponentInstance.isPseudo}" /></td>
					
						<td>${fieldValue(bean: gasComponentInstance, field: "gas")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="paginationGrails">
				<g:paginate total="${gasComponentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
