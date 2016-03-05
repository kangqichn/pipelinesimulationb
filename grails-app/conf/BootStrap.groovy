class BootStrap {

    def initService
    
    /*
     * 初始化....
     * */
    def init = { servletContext ->
        environments {
            development {
                configureForDevelopment(servletContext);
            }
            production {
            }
        }
    }
    
    /*
     * 撤销、退出
     * */
    def destroy = {
    }
    
    /*
     * 初始化代码
     * */
    def configureForDevelopment(servletContext) {
        println "这是开发环境..."
        def webRootDir = servletContext.getRealPath("/")
        def scriptPath = "${webRootDir}scripts"
        println "BootStrap ${webRootDir}"
        initService.loadScripts(scriptPath)
    }
    
    /*
     * 发布以后的
     * */
    def configureForProduction() {}
    
}
