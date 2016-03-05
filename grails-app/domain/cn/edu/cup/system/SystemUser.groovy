package cn.edu.cup.system

class SystemUser {
    
    String     userName
    String     password
    SystemUser superior
    
    static hasMany = [subordinates: SystemUser]
    
    static belongsTo = [role: SystemRole]
    
    static constraints = {
        userName(unique:true)
        password(password:true)
        role()
        superior(nullable: true)
    }
 
    def beforeInsert() {
        password = password.encodeAsMD5Hex()
        println "before Insert ${password}"
    }
    
    def beforeUpdate() {
        //如果密码有更新，就重新计算
        if (isDirty('password')) {
            password = password.encodeAsMD5Hex()
        }
        println "before Update ${this.password}"
    }
    
    String toString() {
        return "${userName}[${role}]"
    }
}
