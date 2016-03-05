package cn.edu.cup.base

/*
 * 曲线
 * 2016.02.13, 
 * 李晓平
 * -----------------------------------------------------------------------------
 * 曲线点的列表
 * */
class Curve {

    String alias    //别名
    String xLabel   //x名称
    String xUnit    //x单位
    String yLabel   //y名称
    String yUnit    //y单位
    
    static hasMany = [points: CurvePoint]
    
    static constraints = {
        alias(nullable: true)
        xLabel()
        xUnit(nullable: true)
        yLabel()
        yUnit(nullable: true)
    }
    
    String toString() {
        return "${yLabel}/${yUnit}-${xLabel}/${xUnit}"
    }
    
}
