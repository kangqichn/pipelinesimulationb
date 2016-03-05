package cn.edu.cup.system

class SystemLog {
    String sessionId
    String userName
    String doing
    Date   loginDate
    String hostIP
    
    static constraints = {
        sessionId()
        hostIP()
        userName()
        doing()
        loginDate()
    }
    
    static mapping = {
        sort loginDate: "desc"
    }
}
