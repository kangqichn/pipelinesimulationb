package cn.edu.cup.fluid.gas

class GasComponentFamily {

    String name
    String description
    
    static hasMany = [gasComponent: GasComponent]
    
    static constraints = {
        name(unique: true)
        description(nullable: true)
    }
    
    String toString() {
        return "${name}(${description})"
    }
    
}
