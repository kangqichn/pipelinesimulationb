<%@ page import="cn.edu.cup.fluid.gas.ComponentFactor" %>



<div class="fieldcontain ${hasErrors(bean: componentFactorInstance, field: 'gasComponent', 'error')} required">
	<label for="gasComponent">
		<g:message code="componentFactor.gasComponent.label" default="Gas Component" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="gasComponent" name="gasComponent.id" from="${cn.edu.cup.fluid.gas.GasComponent.list()}" optionKey="id" required="" value="${componentFactorInstance?.gasComponent?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: componentFactorInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="componentFactor.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" value="${fieldValue(bean: componentFactorInstance, field: 'value')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: componentFactorInstance, field: 'fluidGas', 'error')} required">
	<label for="fluidGas">
		<g:message code="componentFactor.fluidGas.label" default="Fluid Gas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fluidGas" name="fluidGas.id" from="${cn.edu.cup.fluid.gas.FluidGas.list()}" optionKey="id" required="" value="${componentFactorInstance?.fluidGas?.id}" class="many-to-one"/>

</div>

