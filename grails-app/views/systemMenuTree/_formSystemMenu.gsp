<%@ page import="cn.edu.cup.system.SystemMenu" %>

<div class="fieldcontain ${hasErrors(bean: systemMenuInstance, field: 'menuContext', 'error')} required">
    <label for="menuContext">
        <g:message code="systemMenu.menuContext.label" default="Menu Context" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="menuContext" required="" value="${systemMenuInstance?.menuContext}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemMenuInstance, field: 'menuAction', 'error')} required">
    <label for="menuAction">
        <g:message code="systemMenu.menuAction.label" default="Menu Action" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="menuAction" required="" value="${systemMenuInstance?.menuAction}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemMenuInstance, field: 'menuRight', 'error')} required">
    <label for="menuRight">
        <g:message code="systemMenu.menuRight.label" default="Menu Right" />
        <span class="required-indicator">*</span>
    </label>
    <g:field name="menuRight" type="number" value="${systemMenuInstance?.menuRight}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemMenuInstance, field: 'menuDescription', 'error')} required">
    <label for="menuDescription">
        <g:message code="systemMenu.menuDescription.label" default="Menu Description" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="menuDescription" required="" value="${systemMenuInstance?.menuDescription}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemMenuInstance, field: 'menuOrder', 'error')} required">
    <label for="menuOrder">
        <g:message code="systemMenu.menuOrder.label" default="Menu Order" />
        <span class="required-indicator">*</span>
    </label>
    <g:field name="menuOrder" type="number" value="${systemMenuInstance?.menuOrder}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemMenuInstance, field: 'upMenuItem', 'error')} ">
    <label for="upMenuItem">
        <g:message code="systemMenu.upMenuItem.label" default="Up Menu Item" />

    </label>
    <g:select id="upMenuItem" name="upMenuItem.id" from="${cn.edu.cup.system.SystemMenu.list()}" optionKey="id" value="${systemMenuInstance?.upMenuItem?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: systemMenuInstance, field: 'menuItems', 'error')} ">
    <label for="menuItems">
        <g:message code="systemMenu.menuItems.label" default="Menu Items" />

    </label>

    <ul class="one-to-many">
        <g:each in="${systemMenuInstance?.menuItems?}" var="m">
            <li><g:link controller="systemMenu" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
            </g:each>
        <li class="add">
            <g:link controller="systemMenu" action="create" params="['systemMenu.id': systemMenuInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemMenu.label', default: 'SystemMenu')])}</g:link>
            </li>
        </ul>
</div>

