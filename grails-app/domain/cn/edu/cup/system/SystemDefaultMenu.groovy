package cn.edu.cup.system

class SystemDefaultMenu {
    
    SystemUser user
    SystemMenu menuItem
    
    static constraints = {
    }
    
    String toString() {
        return "${user}/${menuItem}"
    }
}
