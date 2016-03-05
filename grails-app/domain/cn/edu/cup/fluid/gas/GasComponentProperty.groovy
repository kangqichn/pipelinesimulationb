package cn.edu.cup.fluid.gas

class GasComponentProperty {
    
    String name
    String description
    String alias
    String unit

    static belongsTo = [propertyFamily: PropertyFamily]
    
    static constraints = {
        name(uniqued: true)
        description(nullable: true)
        alias(uniqued: true)
        unit(nullable: true)
    }
    
    static mapping = {
        sort('id')
        sort('propertyFamily')
        sort('name')
    }
    
    String toString() {
        return "${name}/${alias}"
    }
    
    static GasComponentProperty checkByAlias(aalias) {
        println "check ${aalias}"
        def q = createCriteria()
        def c = q.list() {
            //rlike("alias", aalias)
            'in'("alias", aalias)
        }
        def p
        if (c)  {
            println "查询结果：${c}"
            p = c[0]
        } else {
            p = null
        }
        return p
    }
    
}
