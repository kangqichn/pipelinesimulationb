package cn.edu.cup.common

import cn.edu.cup.system.SystemProcedure

class FileController {
    
    def commonService
    def excelService
    
    /*
     * 具体执行上传，然后显示
     * */
    def doUploadExcelFile() {
        def id = params.stepid
        def procedure = SystemProcedure.get(id)
        println "doUploadExcelFile ${procedure}"
        
        def nextStep = procedure.next
        
        params.destDir = "temp"
        def destFile = commonService.upload(params)
        println "${destFile}"
        params.filename = destFile.path
        def data = excelService.importExcelFile(params)
        render(view: "showDataTable",  
            model:[data: data, 
                filename: destFile.path, 
                nextStep: nextStep])
        
    }
    
    /*
     * 上传Excel文件窗体
     * */
    def uploadExcelFile(params) {
        //def templateFile = params.templateFile
        //println "uploadExcelFile ${params} ?? ${templateFile}"
        //model: [params: params, templateFile: templateFile]
    }

    def index() { }
}
