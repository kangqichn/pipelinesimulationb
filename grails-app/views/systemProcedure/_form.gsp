<%@ page import="cn.edu.cup.system.SystemProcedure" %>



<div class="fieldcontain ${hasErrors(bean: systemProcedureInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="systemProcedure.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${systemProcedureInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemProcedureInstance, field: 'controllerName', 'error')} ">
	<label for="controllerName">
		<g:message code="systemProcedure.controllerName.label" default="Controller Name" />
		
	</label>
	<g:textField name="controllerName" value="${systemProcedureInstance?.controllerName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemProcedureInstance, field: 'actionName', 'error')} ">
	<label for="actionName">
		<g:message code="systemProcedure.actionName.label" default="Action Name" />
		
	</label>
	<g:textField name="actionName" value="${systemProcedureInstance?.actionName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemProcedureInstance, field: 'viewName', 'error')} ">
	<label for="viewName">
		<g:message code="systemProcedure.viewName.label" default="View Name" />
		
	</label>
	<g:textField name="viewName" value="${systemProcedureInstance?.viewName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemProcedureInstance, field: 'templateName', 'error')} ">
	<label for="templateName">
		<g:message code="systemProcedure.templateName.label" default="Template Name" />
		
	</label>
	<g:textField name="templateName" value="${systemProcedureInstance?.templateName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemProcedureInstance, field: 'appendActions', 'error')} ">
	<label for="appendActions">
		<g:message code="systemProcedure.appendActions.label" default="Append Actions" />
		
	</label>
	<g:textField name="appendActions" value="${systemProcedureInstance?.appendActions}" size="100"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemProcedureInstance, field: 'previous', 'error')} ">
	<label for="previous">
		<g:message code="systemProcedure.previous.label" default="Previous" />
		
	</label>
	<g:select id="previous" name="previous.id" from="${cn.edu.cup.system.SystemProcedure.list()}" optionKey="id" value="${systemProcedureInstance?.previous?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemProcedureInstance, field: 'next', 'error')} ">
	<label for="next">
		<g:message code="systemProcedure.next.label" default="Next" />
		
	</label>
	<g:select id="next" name="next.id" from="${cn.edu.cup.system.SystemProcedure.list()}" optionKey="id" value="${systemProcedureInstance?.next?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

