<%@ page import="cn.edu.cup.system.SystemLog" %>



<div class="fieldcontain ${hasErrors(bean: systemLogInstance, field: 'sessionId', 'error')} required">
	<label for="sessionId">
		<g:message code="systemLog.sessionId.label" default="Session Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sessionId" required="" value="${systemLogInstance?.sessionId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemLogInstance, field: 'hostIP', 'error')} required">
	<label for="hostIP">
		<g:message code="systemLog.hostIP.label" default="Host IP" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hostIP" required="" value="${systemLogInstance?.hostIP}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemLogInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="systemLog.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${systemLogInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemLogInstance, field: 'doing', 'error')} required">
	<label for="doing">
		<g:message code="systemLog.doing.label" default="Doing" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="doing" required="" value="${systemLogInstance?.doing}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemLogInstance, field: 'loginDate', 'error')} required">
	<label for="loginDate">
		<g:message code="systemLog.loginDate.label" default="Login Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="loginDate" precision="day"  value="${systemLogInstance?.loginDate}"  />

</div>

