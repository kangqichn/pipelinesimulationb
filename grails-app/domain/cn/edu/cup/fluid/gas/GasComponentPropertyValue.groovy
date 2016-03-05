package cn.edu.cup.fluid.gas

class GasComponentPropertyValue {

    Double value
    
    static belongsTo = [gasComponentProperty: GasComponentProperty, gasComponent: GasComponent]
    
    static constraints = {
        gasComponentProperty()
        gasComponent()
        value()
    }
    
    static mapping = {
        
    }
    
    String toString() {
        return "${gasComponent}.${gasComponentProperty}=${value}"
    }
}
