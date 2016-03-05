package cn.edu.cup.dictionary

import cn.edu.cup.unit.PhysicalQuantity
import cn.edu.cup.unit.QuantityUnit
import cn.edu.cup.commondata.CommonDataProject

class KeyWord {
    String           keyContext                 //标题
    String           description                //说明
    PhysicalQuantity physicalQuantity           //物理量
    QuantityUnit     quantityUnit               //单位
    Boolean          isNullable                 //是否可以为空
    int              keyOrder                   //顺序号
    KeyWord          upKeyWord                  //上级关键字
    ValueType        valueType                  //数据类型
    String           appendValue                //附加数据
    
    static hasMany = [subKeyWords: KeyWord, data: CommonDataProject]
    
    static constraints = {
        keyContext(unique:false)
        description(nullable:true)
        physicalQuantity(nullable:true)
        quantityUnit(nullable:true)
        isNullable(nullable:true)
        valueType()
        keyOrder()
        appendValue(nullable: true)
        upKeyWord(nullable:true)
        data(nullable:true)
    }
    
    static mapping = {
        subKeyWords sort: 'keyOrder', 'keyContext', 'physicalQuantity', 'id'  //这是排序的标准做法
    }
    
    def processAppendValue() {
        switch (valueType) {
        case "enum":
            break;
        case "row_array":
            break;
        case "col_array":
            break;
        case "innerHref":
            def s = appendValue.split(",")
            s.each{e->
                if (!e.equals("null")) {
                    if (!(e.trim().isEmpty())) {
                        appendValue = e
                    }
                }
            }
            println "processAppendValue ${s} ${appendValue}"
            break;
        case "innerHrefArray":
            break;
        case "outerHref":
            break;
        case "outerFile":
            break;
        default:
            break;
        }
    }
    
    //处理appendValue, 根据值的类型规范appendValue的数值
    def beforeInsert() {
        //processAppendValue()
    }
    
    def beforeUpdate() {
        //processAppendValue()
    }
    
    String toString() {
        return "${id}/${keyContext}"
    }
    
    Boolean isLeaf() {
        return (subKeyWords == null)
    }
}
