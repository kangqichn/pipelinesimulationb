package cn.edu.cup.fluid.gas

/*
 * 气体
 * 2016.02.13, 
 * 李晓平
 * -----------------------------------------------------------------------------
 * 气体--组分模型
 * 组分、假组分统一处理
 * 
 * */
class FluidGas {

    String name
    String comment  //备注
    Double moleMass
    String moleMassUnit
    
    static hasMany = [componentFactor: ComponentFactor]
    
    static mapping = {
        componentFactor sort: 'gasComponent'
    }
    
    static constraints = {
        name()
        comment(nullable: true)
        moleMass(nullable: true)
        moleMassUnit(nullable: true)
    }
    
    String toString() {
        return "${name}(组分数：${componentFactor?.size()})"
    }
    
    String componentFactors() {
        return "${componentFactor}"
    }
}
