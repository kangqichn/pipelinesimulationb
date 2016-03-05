
<%@ page import="cn.edu.cup.dictionary.ObjectMapping" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'objectMapping.label', default: 'ObjectMapping')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-objectMapping" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-objectMapping" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list objectMapping">
			
				<g:if test="${objectMappingInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="objectMapping.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${objectMappingInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${objectMappingInstance?.className}">
				<li class="fieldcontain">
					<span id="className-label" class="property-label"><g:message code="objectMapping.className.label" default="Class Name" /></span>
					
						<span class="property-value" aria-labelledby="className-label"><g:fieldValue bean="${objectMappingInstance}" field="className"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${objectMappingInstance?.keyWord}">
				<li class="fieldcontain">
					<span id="keyWord-label" class="property-label"><g:message code="objectMapping.keyWord.label" default="Key Word" /></span>
					
						<span class="property-value" aria-labelledby="keyWord-label"><g:link controller="keyWord" action="show" id="${objectMappingInstance?.keyWord?.id}">${objectMappingInstance?.keyWord?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${objectMappingInstance?.propertyName}">
				<li class="fieldcontain">
					<span id="propertyName-label" class="property-label"><g:message code="objectMapping.propertyName.label" default="Property Name" /></span>
					
						<span class="property-value" aria-labelledby="propertyName-label"><g:fieldValue bean="${objectMappingInstance}" field="propertyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${objectMappingInstance?.dataType}">
				<li class="fieldcontain">
					<span id="dataType-label" class="property-label"><g:message code="objectMapping.dataType.label" default="Data Type" /></span>
					
						<span class="property-value" aria-labelledby="dataType-label"><g:fieldValue bean="${objectMappingInstance}" field="dataType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:objectMappingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${objectMappingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
