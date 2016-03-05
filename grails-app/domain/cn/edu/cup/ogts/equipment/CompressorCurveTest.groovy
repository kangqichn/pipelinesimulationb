package cn.edu.cup.ogts.equipment

import cn.edu.cup.base.Curve
import cn.edu.cup.fluid.gas.FluidGas

/*
 * 压缩机特性曲线测试
 * 2016.02.13, 
 * 李晓平
 * -----------------------------------------------------------------------------
 * 针对某种工况进行的测试
 * 
 * */
class CompressorCurveTest {
    
    FluidGas gas        //工质--所用工质
    Double pressure     //压力
    String pressureUnit //压力单位
    
    Double temperatrue      //温度
    String temperatureUnit  //温度单位
    
    Double speed        //转速
    String speedUnit    //转速单位
    
    Date   testDate     //测试日期
    
    String comment      //备注
    
    Curve  curve        //测试曲线
    
    static belongsTo = [compressor: Compressor]

    static constraints = {
        compressor()
        gas()
        
        pressure()
        pressureUnit()
        temperatrue()  //温度
        temperatureUnit()  //温度单位
    
        speed()        //转速
        speedUnit()    //转速单位
    
        testDate(nullable: true)     //测试日期
    
        comment(nullable: true)      //备注
    
        curve(nullable: true)        //测试曲线
    }
    
    String toString() {
        if (curve) {
            return "${curve?.alias}"
        } else {
            return "Null"
        }
    }
}
