<%@ page import="cn.edu.cup.fluid.gas.GasComponentPropertyValueFactor" %>



<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyValueFactorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="gasComponentPropertyValueFactor.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${gasComponentPropertyValueFactorInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyValueFactorInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="gasComponentPropertyValueFactor.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: gasComponentPropertyValueFactorInstance, field: 'value')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyValueFactorInstance, field: 'gasComponentPropertyValue', 'error')} required">
	<label for="gasComponentPropertyValue">
		<g:message code="gasComponentPropertyValueFactor.gasComponentPropertyValue.label" default="Gas Component Property Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gasComponentPropertyValue" name="gasComponentPropertyValue.id" from="${cn.edu.cup.fluid.gas.GasComponentPropertyValue.list()}" optionKey="id" required="" value="${gasComponentPropertyValueFactorInstance?.gasComponentPropertyValue?.id}" class="many-to-one"/>

</div>

