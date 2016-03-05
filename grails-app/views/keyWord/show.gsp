
<%@ page import="cn.edu.cup.dictionary.KeyWord" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'keyWord.label', default: 'KeyWord')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-keyWord" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-keyWord" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list keyWord">
			
				<g:if test="${keyWordInstance?.keyContext}">
				<li class="fieldcontain">
					<span id="keyContext-label" class="property-label"><g:message code="keyWord.keyContext.label" default="Key Context" /></span>
					
						<span class="property-value" aria-labelledby="keyContext-label"><g:fieldValue bean="${keyWordInstance}" field="keyContext"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="keyWord.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${keyWordInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.physicalQuantity}">
				<li class="fieldcontain">
					<span id="physicalQuantity-label" class="property-label"><g:message code="keyWord.physicalQuantity.label" default="Physical Quantity" /></span>
					
						<span class="property-value" aria-labelledby="physicalQuantity-label"><g:link controller="physicalQuantity" action="show" id="${keyWordInstance?.physicalQuantity?.id}">${keyWordInstance?.physicalQuantity?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.quantityUnit}">
				<li class="fieldcontain">
					<span id="quantityUnit-label" class="property-label"><g:message code="keyWord.quantityUnit.label" default="Quantity Unit" /></span>
					
						<span class="property-value" aria-labelledby="quantityUnit-label"><g:link controller="quantityUnit" action="show" id="${keyWordInstance?.quantityUnit?.id}">${keyWordInstance?.quantityUnit?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.isNullable}">
				<li class="fieldcontain">
					<span id="isNullable-label" class="property-label"><g:message code="keyWord.isNullable.label" default="Is Nullable" /></span>
					
						<span class="property-value" aria-labelledby="isNullable-label"><g:formatBoolean boolean="${keyWordInstance?.isNullable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.valueType}">
				<li class="fieldcontain">
					<span id="valueType-label" class="property-label"><g:message code="keyWord.valueType.label" default="Value Type" /></span>
					
						<span class="property-value" aria-labelledby="valueType-label"><g:link controller="valueType" action="show" id="${keyWordInstance?.valueType?.id}">${keyWordInstance?.valueType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.keyOrder}">
				<li class="fieldcontain">
					<span id="keyOrder-label" class="property-label"><g:message code="keyWord.keyOrder.label" default="Key Order" /></span>
					
						<span class="property-value" aria-labelledby="keyOrder-label"><g:fieldValue bean="${keyWordInstance}" field="keyOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.appendValue}">
				<li class="fieldcontain">
					<span id="appendValue-label" class="property-label"><g:message code="keyWord.appendValue.label" default="Append Value" /></span>
					
						<span class="property-value" aria-labelledby="appendValue-label"><g:fieldValue bean="${keyWordInstance}" field="appendValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.upKeyWord}">
				<li class="fieldcontain">
					<span id="upKeyWord-label" class="property-label"><g:message code="keyWord.upKeyWord.label" default="Up Key Word" /></span>
					
						<span class="property-value" aria-labelledby="upKeyWord-label"><g:link controller="keyWord" action="show" id="${keyWordInstance?.upKeyWord?.id}">${keyWordInstance?.upKeyWord?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="keyWord.data.label" default="Data" /></span>
					
						<g:each in="${keyWordInstance.data}" var="d">
						<span class="property-value" aria-labelledby="data-label"><g:link controller="commonDataProject" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${keyWordInstance?.subKeyWords}">
				<li class="fieldcontain">
					<span id="subKeyWords-label" class="property-label"><g:message code="keyWord.subKeyWords.label" default="Sub Key Words" /></span>
					
						<g:each in="${keyWordInstance.subKeyWords}" var="s">
						<span class="property-value" aria-labelledby="subKeyWords-label"><g:link controller="keyWord" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:keyWordInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${keyWordInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
