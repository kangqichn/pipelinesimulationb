
<%@ page import="cn.edu.cup.system.SystemMenu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemMenu.label', default: 'SystemMenu')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemMenu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemMenu" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemMenu">
			
				<g:if test="${systemMenuInstance?.menuContext}">
				<li class="fieldcontain">
					<span id="menuContext-label" class="property-label"><g:message code="systemMenu.menuContext.label" default="Menu Context" /></span>
					
						<span class="property-value" aria-labelledby="menuContext-label"><g:fieldValue bean="${systemMenuInstance}" field="menuContext"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemMenuInstance?.menuAction}">
				<li class="fieldcontain">
					<span id="menuAction-label" class="property-label"><g:message code="systemMenu.menuAction.label" default="Menu Action" /></span>
					
						<span class="property-value" aria-labelledby="menuAction-label"><g:fieldValue bean="${systemMenuInstance}" field="menuAction"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemMenuInstance?.menuRight}">
				<li class="fieldcontain">
					<span id="menuRight-label" class="property-label"><g:message code="systemMenu.menuRight.label" default="Menu Right" /></span>
					
						<span class="property-value" aria-labelledby="menuRight-label"><g:fieldValue bean="${systemMenuInstance}" field="menuRight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemMenuInstance?.menuDescription}">
				<li class="fieldcontain">
					<span id="menuDescription-label" class="property-label"><g:message code="systemMenu.menuDescription.label" default="Menu Description" /></span>
					
						<span class="property-value" aria-labelledby="menuDescription-label"><g:fieldValue bean="${systemMenuInstance}" field="menuDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemMenuInstance?.menuOrder}">
				<li class="fieldcontain">
					<span id="menuOrder-label" class="property-label"><g:message code="systemMenu.menuOrder.label" default="Menu Order" /></span>
					
						<span class="property-value" aria-labelledby="menuOrder-label"><g:fieldValue bean="${systemMenuInstance}" field="menuOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemMenuInstance?.upMenuItem}">
				<li class="fieldcontain">
					<span id="upMenuItem-label" class="property-label"><g:message code="systemMenu.upMenuItem.label" default="Up Menu Item" /></span>
					
						<span class="property-value" aria-labelledby="upMenuItem-label"><g:link controller="systemMenu" action="show" id="${systemMenuInstance?.upMenuItem?.id}">${systemMenuInstance?.upMenuItem?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemMenuInstance?.menuItems}">
				<li class="fieldcontain">
					<span id="menuItems-label" class="property-label"><g:message code="systemMenu.menuItems.label" default="Menu Items" /></span>
					
						<g:each in="${systemMenuInstance.menuItems}" var="m">
						<span class="property-value" aria-labelledby="menuItems-label"><g:link controller="systemMenu" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:systemMenuInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${systemMenuInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
