<div id="create-systemMenu" class="content scaffold-create" role="main">
    <h1>创建新的菜单项</h1>
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
        <fieldset class="form">
            <g:render template="formSystemMenu"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:formRemote>
</div>
