package cn.edu.cup.fluid.gas

class PropertyFamily {

    String name
    String alias
    String description
    
    static hasMany = [property: GasComponentProperty]
    
    static constraints = {
        name(unique: true)
        alias(unique: true)
        description(nullable: true)
    }
    
    static mapping = {
        property sort('name')
    }
    
    String toString() {
        return "${name}"
    }
}
