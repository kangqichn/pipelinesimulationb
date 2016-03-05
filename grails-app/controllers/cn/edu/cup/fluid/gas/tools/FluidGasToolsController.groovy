package cn.edu.cup.fluid.gas.tools

import cn.edu.cup.fluid.gas.GasComponent
import cn.edu.cup.fluid.gas.GasComponentFamily
import cn.edu.cup.system.SystemProcedure
import grails.transaction.Transactional

class FluidGasToolsController {
    
    def commonService
    def excelService
    
    /*
     * 更新别名
     * */
    @Transactional
    def updateAlias(g, nalias) {
        def status = false
        def temp = g?.alias
        println "updateAlias ${g}--${nalias} ${temp}"
        if (temp) {
            //原来有别名，检查是否包含新的别名，如果不包含，增加上。
            def found = temp.indexOf(nalias)
            println "${found}"
            if (found < 0) {
                println "update ${g}-- ${temp}"
                def tempa = "${g?.alias}|${nalias}"
                g.alias = tempa
                status = true
            } else {
                println "update ${g}--有了=${temp}"
            }
        } else {
            //原来没有别名，增加别名
            println "原来没有别名，增加别名 ${nalias}"
            g.alias = nalias
            status = true
        }
        return status
    }
    
    /*
     * 处理气体种类
     * */
    @Transactional
    def checkGasComponentFamily(familyName) {
        log.info("checkGasComponentFamily ${familyName}")
        def f = GasComponentFamily.findByName(familyName)
        if (!f) {
            f = new GasComponentFamily(name: familyName)
            f.save(flush: true)
        }
        return f
    }
    
    /*
     * 检查、增加、更新
     * */
    @Transactional
    def checkComponentByDescription(data) {
        println "checkComponentByDescription..."
        //处理结果描述
        def result
        def message = "组分："
        def status = false
        //----------------------------------------------------------------------
        def n = data.size()
        println "数组长度: ${n}"
        def cn
        def g
        //----------------------------------------------------------------------
        //根据列数判断
        switch (n) {
        case 2:
            //别名、中文说明
            cn = data[1].trim() 
            if (cn && (cn.size() > 0)) {
                g = GasComponent.findByDescription(cn)
                message += ", ${cn}--${g}"
                println "2 ${cn}--${g}"
                if (g) {
                    status = updateAlias(g, data[0])
                    if (status) {
                        message += "更新了别名 ${cn}"
                        println ", 更新了别名 ${cn}-- ${data[0]}"
                    }
                } else {
                    message += ", 无法增加 ${cn}"
                    println ", 无法增加 ${cn}"
                }
            } else {
                message += ", 这是空行！"
            }
            break;
        case 3:
            //别名、中文说明、分类
            cn = data[1].trim() 
            if (cn && (cn.size() > 0)) {
                g = GasComponent.findByDescription(cn)
                message += ", ${cn}--${g}"
                if (g) {
                    /*
                    if (g.alias.indexOf(data[0]) < 0) {
                    message += ", ${g}--有了--更新"
                    def tempa = "${g?.alias},${data[0]}"
                    g.alias = tempa
                    status = true
                    }
                     */
                    status = updateAlias(g, data[0])
                } else {
                    message += ", 增加 ${cn}"
                    def fn = data[2]
                    def f = checkGasComponentFamily(fn)
                    g = new GasComponent(
                        alias: data[0],
                        description: data[1],
                        family: f
                    )
                    status = true
                }
            } else {
                message += ", 这是空行！"
            }
            break;
        case 6:
            cn = data[5].trim()
            println "check ${cn}"
            if (cn && (cn.size() > 0)) {
                g = GasComponent.findByDescription(cn)
                println ", ${cn}--${g}"
                message += ", ${cn}--${g}"
                if (g) {
                    message += ", ${g}--有了--更新"
                    g.name = data[0]
                    g.casNumber = data[3]
                    g.chemFormula = data[2]
                    g.unifacStructure = data[4]
                    status = true
                } else {
                    //println "增加 ${cn}"
                    message += ", 增加 ${cn}"
                    def fn = data[1]
                    def f = checkGasComponentFamily(fn)
                    g = new GasComponent(
                        name: data[0],
                        casNumber: data[3],
                        chemFormula: data[2],
                        unifacStructure: data[4],
                        description: data[5],
                        family: f
                    )
                    status = true
                }
                result = g
            } else {
                message += ", 这是空行！"
                println "--------空行!"
            }
            break;
        default:
            result = null;
            message += "非法的数据列${n}"
        }
        //----------------------------------------------------------------------
        if (status) {
            g.save(flush: true)
        }
        //message += "<p></p>"
        //返回最后的结果...
        model:[result: result, message: message, status: status]
    }

    /*
     * 创建组分对象，存盘
     * */
    @Transactional
    def createComponentAndSave(params) {
        def result
        def d = params.list('names[]')  //这是获取数据的关键。
        println "d=${d}"
        if (d) {
            result = checkComponentByDescription(d)
        } else {
            result = null
        }
        if (request.xhr) {
            render(template: "createComponentResult", model:[result: result])
        } else {
            render(template: "createComponentError", model:[result: result])
        }
    }
    
    /*
     * 将上传的文件先试一下，然后分两个步骤：导入一行、
     * */
    def importGascomponentNames() {
        def id = params.stepid
        def procedure = SystemProcedure.get(id)
        println "importGascomponentNames ${procedure}"
        
        def data = excelService.importExcelFile(params)
        model:[data: data, procedure: procedure]
    }
    
    /*
     * 准备工作，显示上传文件的页面，同时制定后续处理的控制类以及动作
     * */
    def prepareImportGasComponentNames() {
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
