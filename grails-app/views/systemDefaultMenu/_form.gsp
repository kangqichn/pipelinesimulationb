<%@ page import="cn.edu.cup.system.SystemDefaultMenu" %>



<div class="fieldcontain ${hasErrors(bean: systemDefaultMenuInstance, field: 'menuItem', 'error')} required">
	<label for="menuItem">
		<g:message code="systemDefaultMenu.menuItem.label" default="Menu Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="menuItem" name="menuItem.id" from="${cn.edu.cup.system.SystemMenu.list()}" optionKey="id" required="" value="${systemDefaultMenuInstance?.menuItem?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemDefaultMenuInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="systemDefaultMenu.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cn.edu.cup.system.SystemUser.list()}" optionKey="id" required="" value="${systemDefaultMenuInstance?.user?.id}" class="many-to-one"/>

</div>

