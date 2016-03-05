package cn.edu.cup.commondata

import cn.edu.cup.dictionary.KeyWord

class CommonDataProject {
    
    KeyWord      project
    String       description
    Long         dataId
    
    static hasMany = [items: CommonDataItem]
    
    static constraints = {
        project(uniqued: true)
        description(nullable: true)
        dataId(nullable: true)
    }
    
    static mapping = {
        items sort: 'labelKey', 'id'  //这是排序的标准做法
    }
    
    String toString() {
        return "${id}(dataId=${dataId})/${description}/${project}/${items}"
    }
    
    def beforeInsert() {
        def q = createCriteria()
        long vid = 0;
        def vvid = q.get{
            projections {
                max "dataId"
            }            
            eq("project", project)
        }
        if (vvid) {
            vid = vvid
        }
        dataId = vid + 1
    }
}
