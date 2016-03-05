package cn.edu.cup.system.home

import cn.edu.cup.system.SystemLog
import cn.edu.cup.system.SystemUser
import cn.edu.cup.system.SystemDefaultMenu
import grails.converters.JSON
import grails.transaction.Transactional

class HomeController {

    def systemLogService
    def systemCommonService
    def commonService
    
    //点击菜单
    def showMenuInfo(params) {
        if (params.menuDescription) {
            session.currentMenuDescription = params.menuDescription
            session.currentMenu = params.menu
            //println("showMenuInfo:" + params)
        }
        updateUsersInfo()
        //println("showMenuInfo:" + params)
        //redirect(uri:"/")
        if (request.xhr) {
            //println "showMenuInfo ajax...${session.currentMenuDescription}"
            render(template: "/layouts/userInfo")
        } else {
            //println "menuClick no ajax..."
        }
    }
    
    def updateUsersInfo() {
        def pscontext = request.session.servletContext
        Map serviceMap = pscontext.getAttribute("userList")
        //当前用户
        def users = ""
        def n = Math.min(3, session.onlineCount)
        for (int i=0; i<n; i++) {
            users += serviceMap.keySet().getAt(i) + ','
        }
        if (session.onlineCount > 3) {
            users += '...'
        }
        session.users = users
        return users
    }
    
    //点击菜单
    def menuClick(params) {
        if (params.menu) {
            session.currentTopMenuContext = params.menu
        }
        updateUsersInfo()
        println("click:" + params.menu)
        //redirect(uri:"/")
        if (request.xhr) {
            //println "menuClick ajax..."
            render(template: "/layouts/userInfo")
        } else {
            //println "menuClick no ajax..."
        }
    }
    
    def logoutUI() {
        def userName = [params.userName]
        println "logout ${params}"
        flash.clear()
        model:[userName: userName]
    }
    
    //退出
    @Transactional
    def logout() {
        def user = session.user
        def userName = "???"
        if (user) {
            //记录日志
            systemLogService.recordLog(session, request, params)
            //当前用户中删除
            def pscontext = request.session.servletContext
            Map serviceMap = pscontext.getAttribute("userList")
            if (serviceMap) {
                serviceMap.remove(user?.userName)
                userName = user?.userName
            }
        }
        //撤销当前回话
        session.invalidate()
        //session.removeAttribute('user')
        println "${userName}退出来了."
        //返回客户端
        //redirect(controller:"home", action:"logoutUI", params:[userName: userName])
        model:[userName: userName]
    }
    
    //登录
    @Transactional
    def login(params) {
        //初始化用户登记Map
        def pscontext = request.session.servletContext
        Map serviceMap = pscontext.getAttribute("userList")
        if(!serviceMap){
            def userList = new HashMap()
            pscontext.putAt("userList", userList)
            serviceMap = userList
        }
        //从参数中获取当前登录用户的信息
        //println "login -- ${params}"  //ok
        String userName = params.userName;
        String p = params.password.encodeAsMD5Hex()
        def user = SystemUser.findByUserNameAndPassword(userName, p)
        //登录判断
        println "login ${user} ${p}"
        if (user) {
            //记录在session中
            session.user = user
            session.right = user.role.roleRight
            flash.message = "Hello ${user.userName}!"
            //记录日志
            systemLogService.recordLog(session, request, params)
            //登记用户
            serviceMap.putAt(user.userName, session)
            //统计人数
            session.onlineCount = serviceMap.size()
            println "在线人数：${session?.onlineCount}"
            //欢迎信息
            updateUsersInfo()
            flash.message = "欢迎, ${params.userName}!"
            //处理用户的缺省菜单
            def items = SystemDefaultMenu.findAllByUser(user)
            println "home index ${session.user} ${items}"
            def defaultMenuItem
            if (items) {
                //获取缺省的菜单 
                defaultMenuItem = items.last()
                session.currentMenuDescription = defaultMenuItem?.menuItem?.menuDescription
                session.currentTopMenuContext = defaultMenuItem?.menuItem?.topMenuContext()

                redirect(uri:"/${defaultMenuItem?.menuItem?.menuAction}")
            } else {
                //没有缺省菜单
                chain(controller:'home', action:'index', params:[flash:flash])
            }
        } else {
            flash.message = "Sorry, ${params.userName}, 用户名或密码错误!"
            chain(controller:'home', action:'loginUI', params:[flash:flash])
        }
    }
    
    //登陆界面
    def loginUI() {}
    
    //初始界面
    def index() { }
}
