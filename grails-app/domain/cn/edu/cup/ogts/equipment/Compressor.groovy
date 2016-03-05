package cn.edu.cup.ogts.equipment

/*
 * 压缩机
 * 2016.02.13, 
 * 李晓平
 * -----------------------------------------------------------------------------
 * 压缩机
 * */
class Compressor {

    String name
    CompressorType compressorType
    
    String driverName
    String driverType
    
    static constraints = {
        name()
        compressorType(nullable: true)
        driverName(nullable: true)
        driverType(nullable: true)
    }
    
    String toString() {
        return "${name}"
    }
}
