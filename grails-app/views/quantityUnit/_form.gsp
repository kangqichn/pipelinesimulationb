<%@ page import="cn.edu.cup.unit.QuantityUnit" %>



<div class="fieldcontain ${hasErrors(bean: quantityUnitInstance, field: 'unitName', 'error')} required">
	<label for="unitName">
		<g:message code="quantityUnit.unitName.label" default="Unit Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unitName" required="" value="${quantityUnitInstance?.unitName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quantityUnitInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="quantityUnit.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${quantityUnitInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quantityUnitInstance, field: 'label', 'error')} required">
	<label for="label">
		<g:message code="quantityUnit.label.label" default="Label" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="label" required="" value="${quantityUnitInstance?.label}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quantityUnitInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="quantityUnit.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${quantityUnitInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quantityUnitInstance, field: 'factorA', 'error')} required">
	<label for="factorA">
		<g:message code="quantityUnit.factorA.label" default="Factor A" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="factorA" value="${fieldValue(bean: quantityUnitInstance, field: 'factorA')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: quantityUnitInstance, field: 'factorB', 'error')} required">
	<label for="factorB">
		<g:message code="quantityUnit.factorB.label" default="Factor B" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="factorB" value="${fieldValue(bean: quantityUnitInstance, field: 'factorB')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: quantityUnitInstance, field: 'physicalQuantity', 'error')} required">
	<label for="physicalQuantity">
		<g:message code="quantityUnit.physicalQuantity.label" default="Physical Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="physicalQuantity" name="physicalQuantity.id" from="${cn.edu.cup.unit.PhysicalQuantity.list()}" optionKey="id" required="" value="${quantityUnitInstance?.physicalQuantity?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quantityUnitInstance, field: 'unitSystem', 'error')} required">
	<label for="unitSystem">
		<g:message code="quantityUnit.unitSystem.label" default="Unit System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitSystem" name="unitSystem.id" from="${cn.edu.cup.unit.UnitSystem.list()}" optionKey="id" required="" value="${quantityUnitInstance?.unitSystem?.id}" class="many-to-one"/>

</div>

