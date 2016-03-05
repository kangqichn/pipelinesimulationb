package cn.edu.cup.producing

class Block {
    
    String name
    
    static hasMany = [well: Well]
    
    static constraints = {
    }
    
    String toString() {
        return "${name}"
    }
}
