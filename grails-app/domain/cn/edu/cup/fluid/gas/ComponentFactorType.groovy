package cn.edu.cup.fluid.gas

/*
 * 气体组分分数类型
 * 2016.02.13, 
 * 李晓平
 * -----------------------------------------------------------------------------
 * 气体组分分数的类型，比如：摩尔分数、体积分数、质量分数等等。
 * */
class ComponentFactorType {
    
    String name

    static constraints = {
    }
    
    String toString() {
        return "${name}"
    }
}
