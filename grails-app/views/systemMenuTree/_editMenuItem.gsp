<div id="create-systemMenu" class="content scaffold-create" role="main">
    <h1>编辑菜单项</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${systemMenuInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${systemMenuInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
        </ul>
    </g:hasErrors>
    <g:formRemote name="createSystemMenuForm" 
        update="systemMenuEditDiv"
        url="[controller: 'systemMenuTree', action:'saveMenuItem']"
        >
        <g:hiddenField name="id" value="${systemMenuInstance?.id}" />
        <g:hiddenField name="version" value="${systemMenuInstance?.version}" />
        <fieldset class="form">
            <g:render template="formSystemMenu"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="update" class="save" value="${message(code: 'default.button.update.label', default: 'Update')}" />
        </fieldset>
    </g:formRemote>
</div>
