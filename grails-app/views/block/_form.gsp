<%@ page import="cn.edu.cup.producing.Block" %>



<div class="fieldcontain ${hasErrors(bean: blockInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="block.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${blockInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: blockInstance, field: 'well', 'error')} ">
	<label for="well">
		<g:message code="block.well.label" default="Well" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${blockInstance?.well?}" var="w">
    <li><g:link controller="well" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="well" action="create" params="['block.id': blockInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'well.label', default: 'Well')])}</g:link>
</li>
</ul>


</div>

