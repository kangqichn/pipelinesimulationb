<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> 
<%@ page import="cn.edu.cup.system.SystemTitle" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
        <!--设置Base-->
        <base href="<%=basePath%>"/>
            <!--引入ajax-->
            <!--g:javascript library="prototype" /-->
    <asset:stylesheet src="application.css"/>
    <!--asset:javascript src="application.js"/为了使用easyui 删掉这一句-->
    <!--引入easyui的相关内容-->
    <asset:stylesheet src="easyui/themes/default/easyui.css"/>
    <asset:stylesheet src="easyui/themes/icon.css"/>

    <g:javascript library="jquery" plugin="jquery"/>
    <!--asset:javascript src="easyui/jquery.min.js"/-->
    <asset:javascript src="easyui/jquery.easyui.min.js"/>
    <!--引入百度地图-->
    <!--script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Ly80ADLariEz6qWMDeb7mglR"></script-->
    <asset:javascript src="highcharts/highcharts.js"/>
    <asset:javascript src="highcharts/highcharts-3d.js"/>
    <asset:javascript src="highcharts/adapters/standalone-framework.js"/>
    <asset:javascript src="highcharts/themes/gray.js"/>
    <!---->
    <asset:javascript src="main.js"/>
    <!---->
    <g:layoutHead/>
</head>
<body>
    <!--整体页面布局-->
    <div id="mainFrame" class="easyui-layout" fit="true">  
        <!--标题栏，最上边-->
        <div data-options="region:'north',split:false" style="height: 95px">
            <div id="header" class="easyui-layout" fit="true" style="height: 95px">
                <div data-options="region:'west', split:false" style="width: 70%">
                    <div id="grailsLogo" role="banner">
                        <a href="http://www.cup.edu.cn">
                            <asset:image src="sylogo.gif" alt="中国石油大学(北京)"/>
                        </a>
                    </div>
                    <div id="applicationBanner">${SystemTitle.last()}</div>
                </div>   
                <div data-options="region:'center'">
                    <g:render template="/layouts/userInfo"/>
                </div>
            </div>   
        </div>
        <!--菜单栏，最左边-->
        <div data-options="region:'west',title:'导航菜单',split:true" style="width:15%;">
            <g:if test="${session.user}">
                <div id="leftMenu" class="easyui-accordion">   
                    <g:systemMenuViewB 
                        divId="mainSystemMenuTree" 
                        itemText="menuContext" 
                        itemSubs="menuItems" 
                        itemLink="menuAction" 
                        itemId="id" 
                        itemTop="topMenuContext"
                        itemAux="menuDescription"/>
                </div>
            </g:if>
            <g:else>
                <div id="leftMenuNote">
                    直接跳转到登陆界面
                    <% response.sendRedirect("/${grails.util.Metadata.current.'app.name'}/home/loginUI");%>
                </div>
            </g:else>
        </div>   
        <!--这里是主显示区-->
        <div id="mainPanel" data-options="region:'center',title:'主功能区=>${session.currentTopMenuContext}=>${session.currentMenu}（${session?.currentMenuDescription}）'" style="padding:5px;background:#eee;">
            <g:if test="${session.user}">
                <g:layoutBody/>
            </g:if>
            <g:else>
                <div id="mainNote">
                    请先登录${path}<p>
                        当前${basePath}    
                        当前的说明${currentMenuDescription}
                </div>
            </g:else>
        </div>   
        <!--页脚区域，最下边-->
        <div data-options="region:'south',split:false,border:true" style="height: 80px">
            <div class="footer">
                <table class="footerPanel" role="contentinfo">
                    <tr>
                        <td>
                            <div>
                                <g:copyright startYear="2014">
                                    欢迎(${session?.user})，中国石油大学(北京)机械与储运学院，
                                </g:copyright>
                            </div>
                        </td>
                        <td>
                            <div id="currentUsers">
                                在线用户：${session?.users}
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>   
    </div>      
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</body>
</html>
