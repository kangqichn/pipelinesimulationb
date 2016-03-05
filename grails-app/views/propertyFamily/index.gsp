
<%@ page import="cn.edu.cup.fluid.gas.PropertyFamily" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'propertyFamily.label', default: 'PropertyFamily')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-propertyFamily" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                       <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                           </ul>
                           </div>
                           <div id="list-propertyFamily" class="content scaffold-list" role="main">
                       <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table>
                            <thead>
                                <tr>
                                    
                                        <g:sortableColumn property="name" title="${message(code: 'propertyFamily.name.label', default: 'Name')}" />
                                        
                                        <g:sortableColumn property="alias" title="${message(code: 'propertyFamily.alias.label', default: 'Alias')}" />
                                        
                                        <g:sortableColumn property="description" title="${message(code: 'propertyFamily.description.label', default: 'Description')}" />
                                        
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${propertyFamilyInstanceList}" status="i" var="propertyFamilyInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                        
                                        <td><g:link action="show" id="${propertyFamilyInstance.id}">${fieldValue(bean: propertyFamilyInstance, field: "name")}</g:link></td>
                                        
                                        <td>${fieldValue(bean: propertyFamilyInstance, field: "alias")}</td>
                                        
                                        <td>${fieldValue(bean: propertyFamilyInstance, field: "description")}</td>
                                        
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <div class="paginationGrails">
                            <g:paginate total="${propertyFamilyInstanceCount ?: 0}" />
                        </div>
                        </div>
                        </body>
                        </html>
