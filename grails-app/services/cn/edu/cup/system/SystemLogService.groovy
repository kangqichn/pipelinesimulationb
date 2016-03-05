package cn.edu.cup.system

import grails.transaction.Transactional

@Transactional
class SystemLogService {
    
    @Transactional(readOnly = false)
    def deleteBefore(aDate) {
        SystemLog.executeUpdate("delete SystemLog a where a.loginDate < :d", [d: aDate])
    }
    
    @Transactional(readOnly = false)
    def recordLog(session, request, params) {
        def ps = params
        if (ps.password) {
            ps.password = "********"
        }
        SystemLog log = new SystemLog();
        log.sessionId = session.getId();
        log.loginDate = new Date();
        log.userName = session.user.userName;
        log.hostIP = request.getRemoteAddr();
        log.doing = "${ps}";
        log.save();
        
        //println "recordLog ${session.user}----------";
        //println "recordLog ${log}"
    }
    
}
