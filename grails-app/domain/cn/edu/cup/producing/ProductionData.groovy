package cn.edu.cup.producing

class ProductionData {

    Double pressure
    Double temperature
    Double flowrateWater
    Double flowrateGas
    Double flowrateOil
    
    Well   well
    Date   dateFlag 
    
    static constraints = {
    }
    
    String toString() {
        return "${well}.(${pressure}, ${temperature}|${dateFlag})"
    }
    
}
