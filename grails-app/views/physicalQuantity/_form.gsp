<%@ page import="cn.edu.cup.unit.PhysicalQuantity" %>



<div class="fieldcontain ${hasErrors(bean: physicalQuantityInstance, field: 'quantityName', 'error')} required">
	<label for="quantityName">
		<g:message code="physicalQuantity.quantityName.label" default="Quantity Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="quantityName" required="" value="${physicalQuantityInstance?.quantityName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: physicalQuantityInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="physicalQuantity.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${physicalQuantityInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: physicalQuantityInstance, field: 'quantityUnits', 'error')} ">
	<label for="quantityUnits">
		<g:message code="physicalQuantity.quantityUnits.label" default="Quantity Units" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${physicalQuantityInstance?.quantityUnits?}" var="q">
    <li><g:link controller="quantityUnit" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="quantityUnit" action="create" params="['physicalQuantity.id': physicalQuantityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'quantityUnit.label', default: 'QuantityUnit')])}</g:link>
</li>
</ul>


</div>

