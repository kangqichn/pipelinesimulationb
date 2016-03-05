<%@ page import="cn.edu.cup.commondata.CommonDataItem" %>



<div class="fieldcontain ${hasErrors(bean: commonDataItemInstance, field: 'labelKey', 'error')} required">
	<label for="labelKey">
		<g:message code="commonDataItem.labelKey.label" default="Label Key" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="labelKey" name="labelKey.id" from="${cn.edu.cup.dictionary.KeyWord.list()}" optionKey="id" required="" value="${commonDataItemInstance?.labelKey?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commonDataItemInstance, field: 'value', 'error')} ">
	<label for="value">
		<g:message code="commonDataItem.value.label" default="Value" />
		
	</label>
	<g:textField name="value" value="${commonDataItemInstance?.value}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commonDataItemInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="commonDataItem.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${cn.edu.cup.commondata.CommonDataProject.list()}" optionKey="id" required="" value="${commonDataItemInstance?.project?.id}" class="many-to-one"/>

</div>

