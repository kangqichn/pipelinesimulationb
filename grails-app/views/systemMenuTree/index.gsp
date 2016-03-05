
<%@ page import="cn.edu.cup.system.SystemMenu" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'systemMenu.label', default: 'SystemMenu')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    <!---->
    <asset:javascript src="systemMenu.js"/>
    <!---->

</head>
<body>
    <a href="#list-systemMenu" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li>
                <!--a id="createRootMenu" class="create" href="createMenuItem">新建根节点</a-->
                <g:remoteLink action="createSystemMenu" 
                    update="[success:'systemMenuEditDiv', failure:'error']" 
                    on404="alert('not found')"
                    class="create">新建根节点</g:remoteLink>
                </li>
                <li>
                    <a id="createLeafMenu" class="create" href="javascript:remoteCreate()">新建子节点</a>
                </li>
                <li>
                    <a id="currentNodeMenu" class="information" href="#">当前：</a>
                </li>

        </ul>
    </div>

<!--主显示区布局-->
    <div id="systemMenuTreeDiv" class="easyui-layout" style="width: 100%; height: 90%">   
        <!--左边显示系统菜单树形结构-->
        <div data-options="region:'west',title:'systemMenuTree',split:true" style="width: 50%">
            <div id="list-systemMenu" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <!--树形结构-->
                <g:treeViewA 
                objects="${systemMenuInstanceList}"
                    ulId="systemMenuTree"
                    itemText="menuContext" 
                    itemSubs="menuItems" 
                    itemId="id" />
                <!--分页-->
                <div class="paginationGrails">
                    <g:paginate total="${systemMenuInstanceListCount ?: 0}" />
                </div>
            </div>
        </div>   
        <!--右边显示编辑区-->
        <div data-options="region:'center',title:'编辑区'" style="padding:5px;background:#eee;">
            <div id="systemMenuEditDiv">
            </div>
        </div>   
    </div> 

</body>
</html>
