<%@ page import="cn.edu.cup.dictionary.ValueType" %>



<div class="fieldcontain ${hasErrors(bean: valueTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="valueType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${valueTypeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: valueTypeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="valueType.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${valueTypeInstance?.description}"/>

</div>

