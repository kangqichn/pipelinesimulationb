<%@ page import="cn.edu.cup.system.SystemTitle" %>



<div class="fieldcontain ${hasErrors(bean: systemTitleInstance, field: 'applicationLogo', 'error')} required">
	<label for="applicationLogo">
		<g:message code="systemTitle.applicationLogo.label" default="Application Logo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="applicationLogo" required="" value="${systemTitleInstance?.applicationLogo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemTitleInstance, field: 'applicationTitle', 'error')} required">
	<label for="applicationTitle">
		<g:message code="systemTitle.applicationTitle.label" default="Application Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="applicationTitle" required="" value="${systemTitleInstance?.applicationTitle}"/>

</div>

