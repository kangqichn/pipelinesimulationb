<%@ page import="cn.edu.cup.fluid.gas.GasComponentFamily" %>



<div class="fieldcontain ${hasErrors(bean: gasComponentFamilyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="gasComponentFamily.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${gasComponentFamilyInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentFamilyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="gasComponentFamily.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${gasComponentFamilyInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: gasComponentFamilyInstance, field: 'gasComponent', 'error')} ">
	<label for="gasComponent">
		<g:message code="gasComponentFamily.gasComponent.label" default="Gas Component" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${gasComponentFamilyInstance?.gasComponent?}" var="g">
    <li><g:link controller="gasComponent" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="gasComponent" action="create" params="['gasComponentFamily.id': gasComponentFamilyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'gasComponent.label', default: 'GasComponent')])}</g:link>
</li>
</ul>


</div>

