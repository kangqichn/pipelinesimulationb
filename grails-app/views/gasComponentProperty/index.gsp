
<%@ page import="cn.edu.cup.fluid.gas.GasComponentProperty" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'gasComponentProperty.label', default: 'GasComponentProperty')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-gasComponentProperty" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-gasComponentProperty" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                        <g:sortableColumn property="name" title="${message(code: 'gasComponentProperty.name.label', default: 'Name')}" />
                                        
                                        <g:sortableColumn property="description" title="${message(code: 'gasComponentProperty.description.label', default: 'Description')}" />
                                        
                                        <g:sortableColumn property="alias" title="${message(code: 'gasComponentProperty.alias.label', default: 'Alias')}" />
                                        
                                        <g:sortableColumn property="unit" title="${message(code: 'gasComponentProperty.unit.label', default: 'Unit')}" />
                                        
                                    <th><g:message code="gasComponentProperty.propertyFamily.label" default="Property Family" /></th>
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${gasComponentPropertyInstanceList}" status="i" var="gasComponentPropertyInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${gasComponentPropertyInstance.id}">${fieldValue(bean: gasComponentPropertyInstance, field: "name")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: gasComponentPropertyInstance, field: "description")}</td>
                                        
                                        <td>${fieldValue(bean: gasComponentPropertyInstance, field: "alias")}</td>
                                        
                                        <td>${fieldValue(bean: gasComponentPropertyInstance, field: "unit")}</td>
                                        
                                        <td>${fieldValue(bean: gasComponentPropertyInstance, field: "propertyFamily")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${gasComponentPropertyInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
