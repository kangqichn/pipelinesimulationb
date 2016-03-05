package cn.edu.cup.system

class SystemRole {
    
    String roleName
    int    roleRight    //用户权限是一个区间，这是上限
    int    roleRightMin //用户权限是一个区间，这是下限
    
    static constraints = {
        roleName(unique:true)
        roleRight()
        roleRightMin()
    }
    
    String toString() {
        return "${roleName}/(${roleRightMin}~${roleRight})"
    }
    
}
