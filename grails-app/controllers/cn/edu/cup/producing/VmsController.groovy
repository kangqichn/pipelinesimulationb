package cn.edu.cup.producing

import cn.edu.cup.producing.Block

class VmsController {

    def queryWells(params) {
        def block = params.block
        println "查找：${block}"
        def normalBlock = Block.findByName(block)
        println "查找：${normalBlock}"
        def qa = Well.createCriteria();
        def normalAppList = qa.list(params){
            eq('block', normalBlock)
        }
        def model = [wellInstanceList: normalAppList]
        //println "检索结果 : ----${normalAppList}"
        //----------------------------------------------------------------------
        if (request.xhr) {
            render(template: "userAppView", model: model)   //这是数据
        } else {
            model: model
        }
    }
    
    def index() { 
        def tt = new Date()
        //----------------------------------------------------------------------
        //程序类型
        def blocks = Block.list()
        //----------------------------------------------------------------------
        //每个类型的个数
        def wells = [:]
        println "${blocks}"
        blocks.each {it->
            println "${it}"
            def nc = it.well.size()
            wells.put(it.name, nc)
        }
        //----------------------------------------------------------------------
        
        //----------------------------------------------------------------------
        model:[wells: wells, date: tt]
    }
}
