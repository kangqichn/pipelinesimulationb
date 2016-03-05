<%@ page import="cn.edu.cup.fluid.gas.GasComponentPropertyValue" %>



<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyValueInstance, field: 'gasComponentProperty', 'error')} required">
	<label for="gasComponentProperty">
		<g:message code="gasComponentPropertyValue.gasComponentProperty.label" default="Gas Component Property" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gasComponentProperty" name="gasComponentProperty.id" from="${cn.edu.cup.fluid.gas.GasComponentProperty.list()}" optionKey="id" required="" value="${gasComponentPropertyValueInstance?.gasComponentProperty?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyValueInstance, field: 'gasComponent', 'error')} required">
	<label for="gasComponent">
		<g:message code="gasComponentPropertyValue.gasComponent.label" default="Gas Component" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gasComponent" name="gasComponent.id" from="${cn.edu.cup.fluid.gas.GasComponent.list()}" optionKey="id" required="" value="${gasComponentPropertyValueInstance?.gasComponent?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyValueInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="gasComponentPropertyValue.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: gasComponentPropertyValueInstance, field: 'value')}" required=""/>

</div>

