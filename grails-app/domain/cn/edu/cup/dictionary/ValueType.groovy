package cn.edu.cup.dictionary

class ValueType {
    
    String name
    String description
    
    static constraints = {
        name(uniquied: true)
        description(nullable: true)
    }
    
    String toString() {
        return "${name}/${description}"
    }
}
