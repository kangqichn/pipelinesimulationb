package cn.edu.cup.fluid.gas

class GasComponentPropertyValueFactor {

    String name
    Double value
    
    static belongsTo = [gasComponentPropertyValue: GasComponentPropertyValue]
    
    static constraints = {
        name()
        value()
    }
    
    static mapping = {
        sort('name')
    }
    
    String toString() {
        return "${gasComponentPropertyValue}.${name}=${value}"
    }
}
