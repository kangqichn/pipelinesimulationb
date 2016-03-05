<%@ page import="cn.edu.cup.fluid.gas.FluidGas" %>



<div class="fieldcontain ${hasErrors(bean: fluidGasInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="fluidGas.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${fluidGasInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fluidGasInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="fluidGas.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${fluidGasInstance?.comment}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fluidGasInstance, field: 'moleMass', 'error')} ">
	<label for="moleMass">
		<g:message code="fluidGas.moleMass.label" default="Mole Mass" />
		
	</label>
	<g:field name="moleMass" value="${fieldValue(bean: fluidGasInstance, field: 'moleMass')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fluidGasInstance, field: 'moleMassUnit', 'error')} ">
	<label for="moleMassUnit">
		<g:message code="fluidGas.moleMassUnit.label" default="Mole Mass Unit" />
		
	</label>
	<g:textField name="moleMassUnit" value="${fluidGasInstance?.moleMassUnit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fluidGasInstance, field: 'componentFactor', 'error')} ">
	<label for="componentFactor">
		<g:message code="fluidGas.componentFactor.label" default="Component Factor" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fluidGasInstance?.componentFactor?}" var="c">
    <li><g:link controller="componentFactor" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="componentFactor" action="create" params="['fluidGas.id': fluidGasInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'componentFactor.label', default: 'ComponentFactor')])}</g:link>
</li>
</ul>


</div>

