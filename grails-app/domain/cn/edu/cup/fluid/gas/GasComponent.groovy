package cn.edu.cup.fluid.gas

/*
 * 气体组分
 * 2016.02.13, 
 * 李晓平
 * -----------------------------------------------------------------------------
 * 气体组分
 * */
class GasComponent {

    String name                 //英文名称
    String description          //中文名称
    String casNumber            //
    String chemFormula          //
    String unifacStructure      //
    String alias                //英文简称
    Boolean isPseudo            //是否是假组分
    String gas                  //所属气体，一般为空，只有假组分会有所属气体--只记录气体名称
    
    static belongsTo = [family: GasComponentFamily]
   
    static constraints = {
        name(nullable: true)
        description(nullable: true)
        casNumber(nullable: true)
        chemFormula(nullable: true)
        unifacStructure(nullable: true)
        alias(nullable: true)
        isPseudo(nullable: true)
        gas(nullable: true)
    }
    
    static mapping = {
        sort("alias")
        sort("family")
    }
    
    String toString() {
        if (!name) {
            return "${alias}(${description})"
        } else {
            return "${name}(${description})"
        }
    }
    
    /*
     * 气体属性！
     * */
    static double gasProperty(String propertyName) {
        return 0
    }
    
    /*
     * 根据别名、名称、查找组分 --- 为什么必须说明称静态的？？？
     * -------------------------------------------------------------------------
     * 根据名字、别名等等查找，实在找不到就是假组分！
     * */
    static searchGasComponent(String gname) {
        //类别
        def f = GasComponentFamily.get(1)
        //先判断别名
        def byAlias = GasComponent.find("from GasComponent where alias like '%${gname}%'")
        if (byAlias) {
            return byAlias
        } else {
            //然后判断英文名
            def byName = GasComponent.findByName(gname)
            if (byName) {
                return byName
            } else {
                //判断中文名
                def byCnName = GasComponent.findByDescription(gname)
                if (byCnName) {
                    return byCnName
                } else {
                    def byCasNumber = GasComponent.findByCasNumber(gname)
                    if (byCasNumber) {
                        return byCasNumber
                    } else {
                        def pseudoComponent = new GasComponent(name: gname,
                            isPseudo: true,
                            description: "假组分",
                            gas: null,
                            family: f
                        )
                        //pseudoComponent.save(flush: true)
                        return pseudoComponent
                    }
                }
            }
        }
    }
}
