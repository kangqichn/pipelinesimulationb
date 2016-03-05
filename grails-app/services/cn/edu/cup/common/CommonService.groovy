package cn.edu.cup.common

import grails.transaction.Transactional
import groovy.xml.MarkupBuilder
import org.codehaus.groovy.grails.web.util.WebUtils
import org.springframework.web.context.request.RequestContextHolder

@Transactional
class CommonService {

    //Getting the Request object
    def getRequest(){
        def webUtils = WebUtils.retrieveGrailsWebRequest()
        webUtils.getCurrentRequest()
    }
    //Getting the Response object
    def getResponse(){
        def webUtils = WebUtils.retrieveGrailsWebRequest()
        webUtils.getCurrentResponse()
    }
    //Getting the ServletContext object
    def getServletContext(){
        def webUtils = WebUtils.retrieveGrailsWebRequest()
        webUtils.getServletContext()
    }
    //Getting the Session object
    def getSession(){
        RequestContextHolder.currentRequestAttributes().getSession()
    }    
    
    /*2015.03.30
     * 导入
     * */
    @Transactional(readOnly = false)
    def importFromArray(clazz, data, params) {
        println "importFromArray 0: ${params}"
        data.eachWithIndex{e, i->
            def o = clazz.newInstance()
            o.properties.eachWithIndex{p, j->
                println "importFromArray ${data[i][params[j]]}"
                o.setProperty(p.key, data[i][params[j]])
            }
            println "importFromArray ${o}"
            o.save()
        }
    }
    
    /*2015.2.3
     * 利用MarkBuilder生成ul
     * 最外层的
     * */
    def ulMarkBuilder(objects, params) {
        //println "ulMarkBuilder ${params}"
        //最外层的参数，要传递的
        def writer = new StringWriter()
        def ulString = new MarkupBuilder(writer)
        //ToDo
        ulStringBuilder(ulString, objects, params)
        //返回
        return writer.toString()
    }
    
    /*2015.2.3
     * 利用MarkBuilder 生成li
     * 这是内层的li
     * 将递归调用外层的ul
     * */
    def liStringBuilder(liString, object, params) {
        //参数检测
        def itemText = params.itemText
        def itemSubs = params.itemSubs
        def itemLink = params.itemLink
        def itemId = params.itemId
        def itemAux = params.itemAux
        
        //参数定义
        def link = ""
        def tempText = ""
        def auxText = ""
        
        //ToDo
        def appName = "${grails.util.Metadata.current.'app.name'}"
        //println "liStringBuilder: ${appName}"
        //
        //println "liStringBuilder: 当前对象 ${object}"
        def liId = object.metaClass.getProperty(object, "${itemId}")
        //println "liStringBuilder: 当前对象Id ${liId}"
        
        liString.li([id: liId]) {
            tempText = object.metaClass.getProperty(object, "${itemText}")
            //println "liStringBuilder ${itemText}=${tempText}"
            if (itemLink) {
                link = object.metaClass.getProperty(object, "${itemLink}")
                auxText = object.metaClass.getProperty(object, "${itemAux}")
                //def topMenu = object.metaClass.invokeMethod("${itemTop}", object)
                //println "liStringBuilder: 当前链接 ${link}"
                //a([href: "/${appName}/${link}?currentMenuId=${liId}&currentTopMenuContext=${topMenu}&currentMenuDescription=${auxText}"], 
                //a([href: "/${appName}/${link}?currentMenuId=${liId}&currentMenuDescription=${auxText}"], 
                //a([href: "/${appName}/${link}"], //不用传递这些多余的参数了。
                span() {
                    a([href: "/${appName}/${link}", onclick: "showMenuInfo('${auxText}','${tempText}')"], tempText)
                }
            } else {
                span(tempText)
            }
            //深层判断---递归调用
            def subItems = object.metaClass.getProperty(object, "${itemSubs}")
            //println "liStringBuilder 获取下一级 ${subItems}"
            if (subItems) {
                ulStringBuilder(liString, subItems, params)
            }            
        }
        //println "liStringBuilder: ${liString}"
    }
    
    /*2015.2.2
     * 利用MarkBuilder 生成递归的ul
     * 这是最外层的ul
     * */
    def ulStringBuilder(ulString, objects, params) {
        //参数检测
        def ulId = params.ulId
        //def ulId = params.itemId
        //def itemText = params.itemText
        //def itemSubs = params.itemSubs
        //def itemLink = params.itemLink
        //def itemId = params.itemId
        def ulClass = params.ulClass

        //println "ulStringBuilder: ${params} ${objects}"
        
        //具体内容ToDo
        ulString.ul([id: "menu_${ulId}", class: "${ulClass}"]) {
            objects.each() {e->
                liStringBuilder(ulString, e, params)
            }
        }
        //println "ulStringBuilder: ${ulString}"
    }
    
    //下载文件
    def download(params) {
        def filename = params.filename
        def sf = new File(filename)
        println "download: ${sf} -- ${filename}"
        if (sf.exists()) {
            println "begin download......"
            def fName = sf.getName()
            // 处理中文乱码
            def name = URLEncoder.encode(fName, "UTF-8");            
            def response = getResponse()
            response.setHeader("Content-disposition", "attachment; filename=" + name) 
            response.contentType = "application/x-rarx-rar-compressed"
            //response.contentType = ""

            def out = response.outputStream 
            def inputStream = new FileInputStream(sf) 
            byte[] buffer = new byte[1024]
            int i = -1 
            while ((i = inputStream.read(buffer)) != -1) { 
                out.write(buffer, 0, i) 
            } 
            out.flush() 
            out.close() 
            inputStream.close()        
        }
    }
    
    //上传文件
    File upload(params) {
        println "upload: ${params}"
        def uploadedFile = params.uploadedFile
        def destDir = params.destDir
        def userDir = new File(destDir)
        if (!userDir.exists()) {
            userDir.mkdirs()
        }
        def destFile = new File(userDir, uploadedFile.originalFilename)
        uploadedFile.transferTo(destFile)            
        //println "upload ${destFile}"
        return destFile
    }
    
    //2014.12.22 -- 标记当前页面的偏移量
    def processOffset(session, params) {
        //如果没有offset，尝试读取原来的offset--,如果有了，记住他们
        def key = calculateCurrentKey(params)
        println "processOffset ${params}"
        /*
        if (!params?.offset) {
        //
        println "查询上次的偏移量..."
        params.offset = session.getValue(key)
        } else {
        //
        session.putValue(key, params.offset)
        }*/
        if (params.containsKey('offset')) {
            println "主动设置偏移量..."
            session.putValue(key, params.offset)
        } else {
            println "查询上次的偏移量..."
            params.offset = session.getValue(key)
        }
    }
    
    //删除记录后，必须重置偏移量
    def resetOffsetAfterDelete(session, params) {
        def key = calculateCurrentKey(params)
        session.putValue(key, 0)
    }
    
    def calculateCurrentKey(params) {
        def key = params.controller + "_" + params.action + "_offset"
        return key
    }
}
