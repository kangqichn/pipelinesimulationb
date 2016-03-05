
<%@ page import="cn.edu.cup.producing.Block" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <meta http-equiv="refresh" content="10">
        <g:set var="entityName" value="${message(code: 'block.label', default: 'Block')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    <asset:javascript src="user/vms/vms.js"/>

</head>
<body>
    <a href="#list-block" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li>
                <g:link class="create" action="create">
                    <g:message code="default.new.label" args="[entityName]" />
                </g:link>
            </li>
            <li>当前时间：${date}</li>
        </ul>
    </div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div id="blockTabs" class="easyui-tabs" style="width:100%">   
        <g:each in="${wells}" status="i" var="app">
            <div title="${app.key}" style="padding:20px">   
                <div id="appView${app.key}"></div>
                <div class="easyui-panel">
                    <div id="appViewPagination${i}" 
                         class="easyui-pagination" 
                         data-options="total:${app.value}, 
                         pageSize:10, 
                         onSelectPage: function (pageNumber, pageSize) {
                         console.info(pageNumber);
                         console.info(pageSize);
                         $(this).pagination('loading');
                         //alert('pageNumber:' + pageNumber + ',pageSize:' + pageSize);
                         loadData(pageNumber, pageSize);
                         $(this).pagination('loaded');
                         }">
                </div>
            </div>
        </div>   
    </g:each>
</div>             
</body>
</html>
