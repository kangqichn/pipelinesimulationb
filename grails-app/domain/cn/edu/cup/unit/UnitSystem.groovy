package cn.edu.cup.unit

/**
 * 单位系统--国际单位制、公制、英制、自定义等等
 * */
class UnitSystem {

    String systemName;
    String description;

    static hasMany = [quantityUnits:QuantityUnit]
    
    static constraints = {
        systemName(unique:true);
        description();
    }
    
    static mapping = {
    }
    
    String toString() {
        return "${systemName}";
    }

}
