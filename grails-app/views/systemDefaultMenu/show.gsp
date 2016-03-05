
<%@ page import="cn.edu.cup.system.SystemDefaultMenu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemDefaultMenu.label', default: 'SystemDefaultMenu')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemDefaultMenu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemDefaultMenu" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemDefaultMenu">
			
				<g:if test="${systemDefaultMenuInstance?.menuItem}">
				<li class="fieldcontain">
					<span id="menuItem-label" class="property-label"><g:message code="systemDefaultMenu.menuItem.label" default="Menu Item" /></span>
					
						<span class="property-value" aria-labelledby="menuItem-label"><g:link controller="systemMenu" action="show" id="${systemDefaultMenuInstance?.menuItem?.id}">${systemDefaultMenuInstance?.menuItem?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemDefaultMenuInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="systemDefaultMenu.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="systemUser" action="show" id="${systemDefaultMenuInstance?.user?.id}">${systemDefaultMenuInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:systemDefaultMenuInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${systemDefaultMenuInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
