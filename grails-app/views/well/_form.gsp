<%@ page import="cn.edu.cup.producing.Well" %>



<div class="fieldcontain ${hasErrors(bean: wellInstance, field: 'block', 'error')} required">
	<label for="block">
		<g:message code="well.block.label" default="Block" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="block" name="block.id" from="${cn.edu.cup.producing.Block.list()}" optionKey="id" required="" value="${wellInstance?.block?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: wellInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="well.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${wellInstance?.name}"/>

</div>

