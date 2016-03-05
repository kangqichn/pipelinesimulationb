package cn.edu.cup.commondata

import cn.edu.cup.dictionary.KeyWord

class CommonDataItem {
    
    KeyWord labelKey
    String  value
    
    static belongsTo = [project: CommonDataProject]
    
    static mapping = {
        sort "labelKey"
    }
    
    static constraints = {
        labelKey()
        value(nullable: true)
    }
    
    String toString() {
        return "${labelKey}=${value}"
    }

}
