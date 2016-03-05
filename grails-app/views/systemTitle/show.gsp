
<%@ page import="cn.edu.cup.system.SystemTitle" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemTitle.label', default: 'SystemTitle')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemTitle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemTitle" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemTitle">
			
				<g:if test="${systemTitleInstance?.applicationLogo}">
				<li class="fieldcontain">
					<span id="applicationLogo-label" class="property-label"><g:message code="systemTitle.applicationLogo.label" default="Application Logo" /></span>
					
						<span class="property-value" aria-labelledby="applicationLogo-label"><g:fieldValue bean="${systemTitleInstance}" field="applicationLogo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemTitleInstance?.applicationTitle}">
				<li class="fieldcontain">
					<span id="applicationTitle-label" class="property-label"><g:message code="systemTitle.applicationTitle.label" default="Application Title" /></span>
					
						<span class="property-value" aria-labelledby="applicationTitle-label"><g:fieldValue bean="${systemTitleInstance}" field="applicationTitle"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:systemTitleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${systemTitleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
