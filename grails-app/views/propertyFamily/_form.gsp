<%@ page import="cn.edu.cup.fluid.gas.PropertyFamily" %>



<div class="fieldcontain ${hasErrors(bean: propertyFamilyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="propertyFamily.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${propertyFamilyInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: propertyFamilyInstance, field: 'alias', 'error')} required">
	<label for="alias">
		<g:message code="propertyFamily.alias.label" default="Alias" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alias" required="" value="${propertyFamilyInstance?.alias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: propertyFamilyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="propertyFamily.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${propertyFamilyInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: propertyFamilyInstance, field: 'property', 'error')} ">
	<label for="property">
		<g:message code="propertyFamily.property.label" default="Property" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${propertyFamilyInstance?.property?}" var="p">
    <li><g:link controller="gasComponentProperty" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="gasComponentProperty" action="create" params="['propertyFamily.id': propertyFamilyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'gasComponentProperty.label', default: 'GasComponentProperty')])}</g:link>
</li>
</ul>


</div>

