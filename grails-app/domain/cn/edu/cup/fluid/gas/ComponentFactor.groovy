package cn.edu.cup.fluid.gas

class ComponentFactor {

    GasComponent gasComponent
    Double value
    ComponentFactorType factorType
    
    static belongsTo = [fluidGas: FluidGas]
    
    static constraints = {
        gasComponent()
        value()
        factorType()
    }
    
    static mapping = {
        sort("gasComponent")
        sort("fluidGas")
    }
    
    String toString() {
        return "[\'${gasComponent}\',${value}]"
    }
}
