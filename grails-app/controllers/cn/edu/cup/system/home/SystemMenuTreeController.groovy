package cn.edu.cup.system.home

import cn.edu.cup.system.SystemMenu
import grails.transaction.Transactional

class SystemMenuTreeController {
    
    def systemCommonService
    //def systemLogService
    def commonService
    @Transactional
    def deleteMenuItem(SystemMenu systemMenuInstance) {
        if (systemMenuInstance == null) {
            notFound()
            return
        }
        systemMenuInstance.delete flush:true
        redirect(action:"index")
    }

    //保存菜单
    @Transactional
    def saveMenuItem(SystemMenu systemMenuInstance) {
        if (systemMenuInstance == null) {
            notFound()
            return
        }

        if (systemMenuInstance.hasErrors()) {
            respond systemMenuInstance.errors, view:'create'
            return
        }

        systemMenuInstance.save flush:true
        //redirect(action:"index4SystemMenu")
        
        def model = [systemMenuInstance: systemMenuInstance]
        if (request.xhr) {
            render(template: "showMenuItem", model: model)
        } else {
            model
        }
    }
    
    //创建新的菜单
    def createSystemMenu(params) {
        def systemMenuInstance = new SystemMenu(params)
        def model = [systemMenuInstance: systemMenuInstance]
        if (request.xhr) {
            render(template: "createMenuItem", model: model)
        } else {
            model
        }
    }
    
    //编辑菜单项
    def editMenuItem(SystemMenu systemMenuInstance) {
        def model = [systemMenuInstance: systemMenuInstance]       
        render(template: "editMenuItem", model: model)
    }
    
    //调入当前菜单
    def loadMenuItem(params) {
        def id = params.id
        def menuItem = SystemMenu.get(id)
        println "loadMenuItem ${id}"
        def model = [systemMenuInstance: menuItem]       
        if (request.xhr) {
            // ajax request
            println "ajax: ${menuItem}"
            //render(template: "editKeyWord", model: model)
            render(template: "showMenuItem", model: model)
        } else {
            model: model
        }
    }

    //主页
    def index(Integer max) { 
        params.max = Math.min(max ?: 5, 100)
        //处理偏移量问题
        commonService.processOffset(session, params)
        
        def menus = systemCommonService.getTopLevelMenus(params)
        //println "index4SystemMenu ${params}"
        respond menus, model:[systemMenuInstanceListCount: menus.totalCount]
    }
}
