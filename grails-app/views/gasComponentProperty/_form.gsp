<%@ page import="cn.edu.cup.fluid.gas.GasComponentProperty" %>



<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="gasComponentProperty.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${gasComponentPropertyInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="gasComponentProperty.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${gasComponentPropertyInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyInstance, field: 'alias', 'error')} required">
	<label for="alias">
		<g:message code="gasComponentProperty.alias.label" default="Alias" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alias" required="" value="${gasComponentPropertyInstance?.alias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyInstance, field: 'unit', 'error')} ">
	<label for="unit">
		<g:message code="gasComponentProperty.unit.label" default="Unit" />
		
	</label>
	<g:textField name="unit" value="${gasComponentPropertyInstance?.unit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentPropertyInstance, field: 'propertyFamily', 'error')} required">
	<label for="propertyFamily">
		<g:message code="gasComponentProperty.propertyFamily.label" default="Property Family" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propertyFamily" name="propertyFamily.id" from="${cn.edu.cup.fluid.gas.PropertyFamily.list()}" optionKey="id" required="" value="${gasComponentPropertyInstance?.propertyFamily?.id}" class="many-to-one"/>

</div>

