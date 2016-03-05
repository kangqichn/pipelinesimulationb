package cn.edu.cup.system

class SystemMenu {
    
    String menuContext
    String menuAction
    int    menuRight
    String menuDescription
    int    menuOrder
    SystemMenu upMenuItem
    
    static hasMany = [menuItems: SystemMenu]
    
    static constraints = {
        menuContext()
        menuAction()
        menuRight()
        menuDescription()
        menuOrder()
        upMenuItem(nullable:true)
    }
    
    static mapping = {
        sort('menuOrder')
        sort('id')
        menuItems sort: 'menuOrder', 'id'  //这是排序的标准做法 
    }
    
    String toString() {
        return "${menuContext}(${menuRight})"
    }
    
    //获取顶级菜单的标题
    String topMenuContext() {
        def menuItem = this
        while (menuItem.upMenuItem) {
            menuItem = menuItem.upMenuItem
        }
        return menuItem.menuContext
    }
}
