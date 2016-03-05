package cn.edu.cup.producing

class Well {

    String name
    
    static belongsTo = [block: Block]
    
    static constraints = {
    }
    
    String toString() {
        return "${name}"
    }
}
