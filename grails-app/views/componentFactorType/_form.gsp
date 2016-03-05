<%@ page import="cn.edu.cup.fluid.gas.ComponentFactorType" %>



<div class="fieldcontain ${hasErrors(bean: componentFactorTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="componentFactorType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${componentFactorTypeInstance?.name}"/>

</div>

