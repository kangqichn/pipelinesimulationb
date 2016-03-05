<%@ page import="cn.edu.cup.fluid.gas.GasComponent" %>



<div class="fieldcontain ${hasErrors(bean: gasComponentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="gasComponent.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${gasComponentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="gasComponent.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${gasComponentInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentInstance, field: 'casNumber', 'error')} ">
	<label for="casNumber">
		<g:message code="gasComponent.casNumber.label" default="Cas Number" />
		
	</label>
	<g:textField name="casNumber" value="${gasComponentInstance?.casNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentInstance, field: 'chemFormula', 'error')} ">
	<label for="chemFormula">
		<g:message code="gasComponent.chemFormula.label" default="Chem Formula" />
		
	</label>
	<g:textField name="chemFormula" value="${gasComponentInstance?.chemFormula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentInstance, field: 'unifacStructure', 'error')} ">
	<label for="unifacStructure">
		<g:message code="gasComponent.unifacStructure.label" default="Unifac Structure" />
		
	</label>
	<g:textField name="unifacStructure" value="${gasComponentInstance?.unifacStructure}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentInstance, field: 'alias', 'error')} ">
	<label for="alias">
		<g:message code="gasComponent.alias.label" default="Alias" />
		
	</label>
	<g:textField name="alias" value="${gasComponentInstance?.alias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentInstance, field: 'isPseudo', 'error')} ">
	<label for="isPseudo">
		<g:message code="gasComponent.isPseudo.label" default="Is Pseudo" />
		
	</label>
	<g:checkBox name="isPseudo" value="${gasComponentInstance?.isPseudo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentInstance, field: 'gas', 'error')} ">
	<label for="gas">
		<g:message code="gasComponent.gas.label" default="Gas" />
		
	</label>
	<g:textField name="gas" value="${gasComponentInstance?.gas}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentInstance, field: 'family', 'error')} required">
	<label for="family">
		<g:message code="gasComponent.family.label" default="Family" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="family" name="family.id" from="${cn.edu.cup.fluid.gas.GasComponentFamily.list()}" optionKey="id" required="" value="${gasComponentInstance?.family?.id}" class="many-to-one"/>

</div>

