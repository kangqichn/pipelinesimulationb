package cn.edu.cup.system

import grails.transaction.Transactional

@Transactional
class InitService {
    
    def dataSource
    
    //加载数据库初始化脚本
    def loadScripts(String dir) {
        def File sf = new File(dir)
        println "load scripts ${dir}"
        if (sf.exists()) {
            if (sf) {
                sf.eachFile {f->
                    if (f.isFile()) {
                        executeScript(f)
                    }
                }
            }
        }
    }
    
    //执行附加脚本
    def executeScript(File sf) {
        //def File sf = new File(fileName)
        println "init - ${sf}"
        if (sf) {
            def sql = sf.text
            def db = new groovy.sql.Sql (dataSource)
            //println "init - ${sql}"
            def lines = sql.split(";")
            lines.each() {it->
                //println "line: ${it}"
                it = it.trim()
                if (!it.isEmpty()) {
                    db.executeUpdate(it)
                }
            }
        }
    }
    
}
