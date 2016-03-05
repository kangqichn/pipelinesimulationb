package cn.edu.cup.common

import groovy.xml.MarkupBuilder

class CommonTagLib {
    //static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def systemCommonService
    def commonService

    /*2015.2.4
     * 系统菜单,所需参数如下：
     * divId="leftMenu" 
     * ulId="systemMenuTree" 
     * itemText="menuContext" 
     * itemSubs="menuItems" 
     * itemLink="menuAction" 
     * itemId="id" 
     * */
    def systemMenuViewB = {attrs->
        params.user = session.user
        def menus = systemCommonService.getAllTopLevelMenus(params)
        
        //最外层的参数，要传递的
        def writer = new StringWriter()
        def divString = new MarkupBuilder(writer)
        
        //设置参数
        attrs.ulClass = "easyui-tree"
        
        //具体内容ToDo
        menus.each() {e->
            def selected = false
            if (e.menuContext == session.currentTopMenuContext) {
                divString.div([title: e.menuContext, selected: 'true']){
                    commonService.ulStringBuilder(divString, e, attrs)
                }
            } else {
                divString.div([title: e.menuContext]){
                    commonService.ulStringBuilder(divString, e, attrs)
                }
            }
        }
        
        out << writer.toString()
    }
    
    /*2015.02.05
     * 生成树形结构的显示
     * 
     * */
    def treeViewA = {attrs->
        def objects = attrs.objects
        attrs.ulClass = "easyui-tree"

        //println "treeViewA: ${objects}"
        out << commonService.ulMarkBuilder(objects, attrs)
    }
    
    //日期    
    def thisYear = {
        out << Calendar.getInstance().get(Calendar.YEAR)
    }
    
    //版权
    def copyright = {attrs, body->
        out << "<div id='copyright'>"
        out << "${body()}版权所有. &copy${attrs['startYear']}~${thisYear()}, "
        out << "All Rights Reserved."
        out << "</div>"
    }
    
}
