<%@ page import="cn.edu.cup.system.SystemUser" %>



<div class="fieldcontain ${hasErrors(bean: systemUserInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="systemUser.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${systemUserInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="systemUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${systemUserInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemUserInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="systemUser.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="role" name="role.id" from="${cn.edu.cup.system.SystemRole.list()}" optionKey="id" required="" value="${systemUserInstance?.role?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemUserInstance, field: 'superior', 'error')} ">
	<label for="superior">
		<g:message code="systemUser.superior.label" default="Superior" />
		
	</label>
	<g:select id="superior" name="superior.id" from="${cn.edu.cup.system.SystemUser.list()}" optionKey="id" value="${systemUserInstance?.superior?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemUserInstance, field: 'subordinates', 'error')} ">
	<label for="subordinates">
		<g:message code="systemUser.subordinates.label" default="Subordinates" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemUserInstance?.subordinates?}" var="s">
    <li><g:link controller="systemUser" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemUser" action="create" params="['systemUser.id': systemUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemUser.label', default: 'SystemUser')])}</g:link>
</li>
</ul>


</div>

