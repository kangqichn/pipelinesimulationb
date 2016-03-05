
<%@ page import="cn.edu.cup.commondata.CommonDataItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commonDataItem.label', default: 'CommonDataItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-commonDataItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-commonDataItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list commonDataItem">
			
				<g:if test="${commonDataItemInstance?.labelKey}">
				<li class="fieldcontain">
					<span id="labelKey-label" class="property-label"><g:message code="commonDataItem.labelKey.label" default="Label Key" /></span>
					
						<span class="property-value" aria-labelledby="labelKey-label"><g:link controller="keyWord" action="show" id="${commonDataItemInstance?.labelKey?.id}">${commonDataItemInstance?.labelKey?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commonDataItemInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="commonDataItem.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${commonDataItemInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commonDataItemInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="commonDataItem.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="commonDataProject" action="show" id="${commonDataItemInstance?.project?.id}">${commonDataItemInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:commonDataItemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${commonDataItemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
