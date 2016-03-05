<%@ page import="cn.edu.cup.commondata.CommonDataProject" %>



<div class="fieldcontain ${hasErrors(bean: commonDataProjectInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="commonDataProject.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${cn.edu.cup.dictionary.KeyWord.list()}" optionKey="id" required="" value="${commonDataProjectInstance?.project?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commonDataProjectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="commonDataProject.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${commonDataProjectInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commonDataProjectInstance, field: 'dataId', 'error')} ">
	<label for="dataId">
		<g:message code="commonDataProject.dataId.label" default="Data Id" />
		
	</label>
	<g:field name="dataId" type="number" value="${commonDataProjectInstance.dataId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commonDataProjectInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="commonDataProject.items.label" default="Items" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${commonDataProjectInstance?.items?}" var="i">
    <li><g:link controller="commonDataItem" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="commonDataItem" action="create" params="['commonDataProject.id': commonDataProjectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commonDataItem.label', default: 'CommonDataItem')])}</g:link>
</li>
</ul>


</div>

