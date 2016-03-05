package cn.edu.cup.system

import grails.transaction.Transactional
import cn.edu.cup.system.SystemMenu

@Transactional
class SystemCommonService {

    def currentInformation(params) {
        println("${params}")
    }
    
    def getAllMenus(params) {
        def q = SystemMenu.createCriteria()
        def systemMenuList;
        if (params.user) {
            SystemUser user = params.user
            //println "getAllTopLevelMenus ... ${user}"
            systemMenuList = q.list() {
                ge('menuRight', user.role.roleRightMin) 
                le('menuRight', user.role.roleRight)
            }
        }
        //println "getAllTopLevelMenus ${systemMenuList}"
        return systemMenuList
    }
    
    //获取顶级菜单---?????
    def getAllTopLevelMenus(params) {
        def q = SystemMenu.createCriteria()
        def systemMenuList;
        if (params.user) {
            SystemUser user = params.user
            //println "getAllTopLevelMenus ... ${user}"
            
            systemMenuList = q.list() {
                isNull('upMenuItem')
                ge('menuRight', user.role.roleRightMin) 
                le('menuRight', user.role.roleRight)
                order('menuOrder')
            }
        }
        //println "getAllTopLevelMenus ${systemMenuList}"
        return systemMenuList
    }

    //获取顶级菜单--用于编辑，考虑分页
    def getTopLevelMenus(params) {
        def q = SystemMenu.createCriteria()
        def systemMenuList;
        systemMenuList = q.list(params) {
            isNull('upMenuItem')
        }
        return systemMenuList
    }
    
}
