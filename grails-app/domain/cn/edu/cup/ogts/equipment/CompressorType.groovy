package cn.edu.cup.ogts.equipment

/*
 * 压缩机类型
 * 2016.02.13, 
 * 李晓平
 * -----------------------------------------------------------------------------
 * 压缩机类型
 * */
class CompressorType {
    
    String manufacturer
    String compressorModel

    static constraints = {
        manufacturer()
        compressorModel()
    }
    
    String toString() {
        return "${compressorModel}/${manufacturer}"
    }
}
