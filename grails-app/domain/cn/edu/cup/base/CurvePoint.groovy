package cn.edu.cup.base

/*
 * 曲线上的点,
 * 2016.02.13, 
 * 李晓平
 * -----------------------------------------------------------------------------
 * 最简单、最基本的元素
 * */
class CurvePoint {

    Double x
    Double y
    
    static belongsTo = [curve: Curve]
    
    static constraints = {
    }
    
    /*
     * 转换成字符串，要保证输出后HighCharts能识别
     * 
     * */
    String toString() {
        return "[${x}, ${y}]"
    }
}
