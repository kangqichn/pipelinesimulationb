package cn.edu.cup.dictionary

class KeyWordTreeController {
    
    def commonService

    /*
     * 缺省的动作，列出当前
     * */
    def index(Integer max) {
        params.max = Math.min(max ?: 5, 100)
        commonService.processOffset(session, params)
        def keywords = findTopLevelKeyWords(params)
        respond keywords, model:[keyWordInstanceCount: keywords.totalCount]
    }
    
}
