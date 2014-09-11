import Foundation

class PickupTruck: Car {
    
    var cargoBedWidth = 0
    var cargoBedLength = 0
    
    
    var totalCargoArea : Int {
    
    get {
        return cargoBedWidth * cargoBedLength
    }
    
    set {
            // cargoBedLength = (Int)sqrt(newValue)
            cargoBedWidth = cargoBedLength
        }
        
    }// Closes the getter declaration
    
    } //Closes the variable declaration
    
 //Closes the class declaration