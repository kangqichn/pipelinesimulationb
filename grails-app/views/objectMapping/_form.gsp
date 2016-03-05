<%@ page import="cn.edu.cup.dictionary.ObjectMapping" %>



<div class="fieldcontain ${hasErrors(bean: objectMappingInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="objectMapping.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${objectMappingInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objectMappingInstance, field: 'className', 'error')} required">
	<label for="className">
		<g:message code="objectMapping.className.label" default="Class Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="className" required="" value="${objectMappingInstance?.className}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objectMappingInstance, field: 'keyWord', 'error')} required">
	<label for="keyWord">
		<g:message code="objectMapping.keyWord.label" default="Key Word" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="keyWord" name="keyWord.id" from="${cn.edu.cup.dictionary.KeyWord.list()}" optionKey="id" required="" value="${objectMappingInstance?.keyWord?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objectMappingInstance, field: 'propertyName', 'error')} ">
	<label for="propertyName">
		<g:message code="objectMapping.propertyName.label" default="Property Name" />
		
	</label>
	<g:textField name="propertyName" value="${objectMappingInstance?.propertyName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: objectMappingInstance, field: 'dataType', 'error')} ">
	<label for="dataType">
		<g:message code="objectMapping.dataType.label" default="Data Type" />
		
	</label>
	<g:textField name="dataType" value="${objectMappingInstance?.dataType}"/>

</div>

