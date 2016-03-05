package cn.edu.cup.dictionary

class ObjectMapping {

    String userName
    String className
    KeyWord keyWord
    String propertyName
    String dataType
    
    static constraints = {
        userName()
        className()
        keyWord()
        propertyName(nullable: true)
        dataType(nullable: true)
    }
    
    String toString() {
        return "${userName}.${className}[${keyWord}]"
    }
    
}
