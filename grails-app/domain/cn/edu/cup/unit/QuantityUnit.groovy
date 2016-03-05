package cn.edu.cup.unit

/*
 * 物理量单位
 * */
class QuantityUnit {

    //字段定义
    String unitName;        //名称
    String description;     //描述
    String label;           //符号--英文符号
    String name;            //英文名称
    Double factorA;
    Double factorB;
    
    static belongsTo = [physicalQuantity:PhysicalQuantity, unitSystem: UnitSystem]

    static constraints = {
        unitName(unique:true);
        name(nullable:true)
        label()
        description();
        factorA();
        factorB();
        physicalQuantity();
        unitSystem();
    }
   
    //定义排序
    static mapping = {
        //order: ['physicalQuantity', 'factorA'] //效果不对
        //index 'physicalQuantity', 'factorA'
        //sort "physicalQuantity"
        //physicalQuantity sort: 'isoUnit'
    }
    
    String toString() {
        return "${unitName}/${label}"
    }
}
