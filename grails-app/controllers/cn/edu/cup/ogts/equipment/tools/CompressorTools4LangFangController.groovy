package cn.edu.cup.ogts.equipment.tools

import cn.edu.cup.system.SystemProcedure
import cn.edu.cup.ogts.equipment.CompressorCurveTest
import cn.edu.cup.ogts.equipment.Compressor
import cn.edu.cup.fluid.gas.FluidGas
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


/*
 * 尝试直接导入原始的数据，一次性导入所有数据。
 * */
@Transactional(readOnly = true)
class CompressorTools4LangFangController {

    def newCompressorCurveTest() { 
        println "${params}"
        def procedure = SystemProcedure.findByControllerNameAndActionName(params.controller, params.action)
        println "${procedure.appendActions}"
        def fn = params.filename
        model:[menus: procedure.appendActions, currentExcelFile: fn]
    }
    
    def importLangFangFile() {
        def procedure = SystemProcedure.findByControllerNameAndActionName(params.controller, params.action)
        println "${procedure.appendActions}"
        
        chain(controller: "file", 
            action: "uploadExcelFile", 
            model:[procedure: procedure]
        )
    }
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CompressorCurveTest.list(params), model:[compressorCurveTestInstanceCount: CompressorCurveTest.count()]
    }
}
