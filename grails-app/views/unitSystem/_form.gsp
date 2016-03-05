<%@ page import="cn.edu.cup.unit.UnitSystem" %>



<div class="fieldcontain ${hasErrors(bean: unitSystemInstance, field: 'systemName', 'error')} required">
	<label for="systemName">
		<g:message code="unitSystem.systemName.label" default="System Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="systemName" required="" value="${unitSystemInstance?.systemName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitSystemInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="unitSystem.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${unitSystemInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitSystemInstance, field: 'quantityUnits', 'error')} ">
	<label for="quantityUnits">
		<g:message code="unitSystem.quantityUnits.label" default="Quantity Units" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitSystemInstance?.quantityUnits?}" var="q">
    <li><g:link controller="quantityUnit" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="quantityUnit" action="create" params="['unitSystem.id': unitSystemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'quantityUnit.label', default: 'QuantityUnit')])}</g:link>
</li>
</ul>


</div>

