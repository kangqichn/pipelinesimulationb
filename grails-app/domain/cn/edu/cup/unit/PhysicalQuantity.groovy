package cn.edu.cup.unit

/***
 * 物理量
 * */
class PhysicalQuantity {

    //字段定义
    String quantityName;
    String description;
    
    //定义字段的顺序
    static constraints = {
        quantityName(unique: true);
        description();
    }
    
    //1对多关系定义
    static hasMany = [quantityUnits:QuantityUnit]
    
    static mapping = {
        sort("quantityName")
    }
    
    //
    String toString() {
        return "${quantityName}";
    }

}
