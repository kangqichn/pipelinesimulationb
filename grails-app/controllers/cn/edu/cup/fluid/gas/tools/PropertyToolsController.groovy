package cn.edu.cup.fluid.gas.tools

import cn.edu.cup.system.SystemProcedure
import cn.edu.cup.fluid.gas.PropertyFamily
import cn.edu.cup.fluid.gas.GasComponentProperty
import grails.transaction.Transactional

class PropertyToolsController {

    def commonService
    def excelService
    
    /*
     * 创建组分对象，存盘
     * */
    @Transactional
    def createComponentPropertyAndSave(params) {
        def result = [:]
        def d = params.list('names[]')  //这是获取数据的关键。
        println "d=${d}"
        def n = d.size()
        if (n<4) {
            result.message = '信息不全，数据列数不足4列。'
        } else {
            println "开始检查。。。。${d[0]}"
            def na = d[0].trim()
            def e = GasComponentProperty.findByName(na)
            if (e) {
                result.message = '重复数据--${e}。'
                println "重复数据--${e}。"
            } else {
                def fn = d[3].trim()
                def f = PropertyFamily.findByAlias(fn)
                println "先检查类型： ${f}"
                if (!f) {
                    result.message = '非法的类型--${d[3}。'
                } else {
                    def np = new GasComponentProperty(
                        name: d[0],
                        description: d[1],
                        alias: d[2],
                        unit: d[4],
                        propertyFamily: f
                    )
                    np.save(flush: true)
                    result.message = "创建属性--${np}。"
                }
            }
        }
        //
        if (request.xhr) {
            render(template: "createPropertyNameResult", model:[result: result])
        } else {
            render(template: "createPropertyNameError", model:[result: result])
        }
    }
    
    /*
     * 将上传的文件先试一下，然后分两个步骤：导入一行、
     * */
    def importPropertyNames() {
        def id = params.stepid
        def procedure = SystemProcedure.get(id)
        println "importPropertyNames ${procedure}"
        
        def data = excelService.importExcelFile(params)
        model:[data: data, procedure: procedure]
    }
    
    /*
     * 准备工作，显示上传文件的页面，同时制定后续处理的控制类以及动作
     * */
    def prepareImportPropertyNames() {
        println "${params.controller}"
        println "${params.action}"
        def procedure = SystemProcedure.findByControllerNameAndActionName(params.controller, params.action)
        
        chain(controller: "file", 
            action: "uploadExcelFile", 
            model:[procedure: procedure]
        )
    }

    def index() { }
}
