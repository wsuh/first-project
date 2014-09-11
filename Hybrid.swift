
class HybridCar: Car {
    
    var electricHorsepower: Float = 0.0
    
    override var name : String {
    get{
        super.name = "Hybrid"
        return super.name + "Tech"
    }
    
    set
    {
        //Nothing here for now.
    }
    }
    
    override func setupCarDetailsWithName(nameOfcar: String, colorOfCar colorOfcar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool){
        
        self.color = colorOfcar
        self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
        
        self.electricHorsepower = 0.9 * Float(horsepowerOfCar)
        
        println("My \(name) is \(color) and has \(electricHorsepower) Electric horsepower (bhp) and is \(automaticOption)")
    }
}