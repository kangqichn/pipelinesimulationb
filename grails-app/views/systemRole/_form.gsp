<%@ page import="cn.edu.cup.system.SystemRole" %>



<div class="fieldcontain ${hasErrors(bean: systemRoleInstance, field: 'roleName', 'error')} required">
	<label for="roleName">
		<g:message code="systemRole.roleName.label" default="Role Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roleName" required="" value="${systemRoleInstance?.roleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemRoleInstance, field: 'roleRight', 'error')} required">
	<label for="roleRight">
		<g:message code="systemRole.roleRight.label" default="Role Right" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="roleRight" type="number" value="${systemRoleInstance.roleRight}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemRoleInstance, field: 'roleRightMin', 'error')} required">
	<label for="roleRightMin">
		<g:message code="systemRole.roleRightMin.label" default="Role Right Min" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="roleRightMin" type="number" value="${systemRoleInstance.roleRightMin}" required=""/>

</div>

