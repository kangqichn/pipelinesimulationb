package cn.edu.cup.ogts.equipment.tools

import cn.edu.cup.system.SystemProcedure
import cn.edu.cup.ogts.equipment.CompressorCurveTest
import cn.edu.cup.ogts.equipment.Compressor
import cn.edu.cup.fluid.gas.FluidGas
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CompressorToolsController {
    
    /*
     * 保存测试状态
     * */
    @Transactional
    def saveCompressorCurveTest() {
        println "${params}"
        compressorCurveTestInstance.save flush:true
        if (request.xhr) {
            render(template: "compressorCurveTest", model:[compressorCurveTestInstance: compressorCurveTestInstance])
        } else {
            render(template: "compressorCurveTest", model:[compressorCurveTestInstance: compressorCurveTestInstance])
        }
    }
    
    /*
     * 检索使用该气体的所有的测试
     * */
    def queryCompressorCurveTest4FluidGas() {
        def gas = FluidGas.get(params.id)
        println "${gas}"
        def tests = CompressorCurveTest.findByGas(gas)
        if (request.xhr) {
            render(template: "compressorCurveTest", model:[tests: tests, gas: gas])
        } else {
            render(template: "compressorCurveTest", model:[tests: tests, gas: gas])
        }
    }
    
    /*
     * 检索所有的气体信息
     * */
    def queryFluidGas() {
        def fluidGasList = FluidGas.list()
        if (request.xhr) {
            render(template: "fluidGasList", model:[fluidGasList: fluidGasList])
        } else {
            render(template: "fluidGasList", model:[fluidGasList: fluidGasList])
        }
    }
    
    /*
     * 创建新的测试条件，
     * */
    def createCompressorCurveTest() {
        def comp = Compressor.get(params.compressorId)
        def gas = FluidGas.get(params.gasId)
        def test = new CompressorCurveTest(compressor: comp, gas: gas)
        println "-- ${test.compressor}  ${comp}"
        if (request.xhr) {
            render(template: "newCompressorCurveTest", model:[compressorCurveTestInstance: test])
        } else {
            render(template: "newCompressorCurveTest", model:[compressorCurveTestInstance: test])
        }
    }
    
    /*
     * 检索某压缩及对应的测试！
     * */
    def queryCompressorCurveTest() {
        def compressor = Compressor.get(params.id)
        def tests = CompressorCurveTest.findByCompressor(compressor)
        if (request.xhr) {
            render(template: "compressorCurveTest", model:[tests: tests, compressor:compressor])
        } else {
            render(template: "compressorCurveTest", model:[tests: tests, compressor:compressor])
        }
    }
    
    /*
     * 检索所有的压缩机
     * */
    def queryCompressor() {
        def compressors = Compressor.list()
        if (request.xhr) {
            render(template: "compressors", model:[compressors: compressors])
        } else {
            render(template: "compressors", model:[compressors: compressors])
        }
    }
    
    def newCompressorCurveTest() { 
        println "${params}"
        def procedure = SystemProcedure.findByControllerNameAndActionName(params.controller, params.action)
        println "${procedure.appendActions}"
        model:[menus: procedure.appendActions]
    }
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CompressorCurveTest.list(params), model:[compressorCurveTestInstanceCount: CompressorCurveTest.count()]
    }

}
