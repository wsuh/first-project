class Car {
    
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""
    
    func setupCarDetailsWithName (nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool){

        self.name = nameOfCar
        self.color = colorOfCar
        self.horsepower = horsepowerOfCar
        self.automaticOption = (automaticOptionOfCar ? "automatic" : "manual")

    println("My \(name) is \(color) and has \(horsepower) horsepowers. It is \(automaticOption).")
    }
}

//This is the first category of cars

var myRegularCar = Car()
myRegularCar.setupCarDetailsWithName ("Regular car", colorOfCar: "Red", horsepowerOfCar: 200, automaticOptionOfCar: true)

//This is my first test

var myOtherCar = Car()
myOtherCar.setupCarDetailsWithName("Other Car", colorOfCar: "Blue", horsepowerOfCar: 20, automaticOptionOfCar: false)

class Turbo: Car {
    var turboRating = "" //can be A to F
    var stablizingSpoiler = ""
    
    func turboCarSpecs (aTurboRating: String, aSpoiler: Bool) -> String{
        self.turboRating = aTurboRating
        self.stablizingSpoiler = (aSpoiler ? "a" : "no")
        
        return("In addition, this turbo car has a Turbo rating of \(self.turboRating) and \(self.stablizingSpoiler) spoiler")
    }
}

class Weaponized: Car {
    var weaponType = ""
    var armor = ""
    
    func Weaponized (aWeaponType: String, aArmor: Bool) -> String{
        self.weaponType = aWeaponType
        self.armor = (aArmor ? "a" : "no")

        return("In addition, this weaponized car has \(self.weaponType) and \(self.armor)")
    }
}

// Weaponized Car

var WeaponizedCar = Weaponized()
println()

WeaponizedCar.setupCarDetailsWithName("Weaponized Car", colorOfCar: "gray", horsepowerOfCar: 9000, automaticOptionOfCar: true)

// This is my third car

var TurboCar = Turbo()

println()

TurboCar.setupCarDetailsWithName("Turbo Car", colorOfCar: "blue", horsepowerOfCar: 200, automaticOptionOfCar: true)
println(TurboCar.turboCarSpecs("B", aSpoiler: true))


// This is my hybrid car 

var myHybridCar = HybridCar()
println()
myHybridCar.setupCarDetailsWithName("Hybrid Car", colorOfCar: "Yellow", horsepowerOfCar: 100, automaticOptionOfCar: true)

// This is the fourth category of cars: a Pickup Truck

var myPickupTruck = PickupTruck()

//Scenario 1  - Use the setter to work back to calculate the length and width
myPickupTruck.totalCargoArea = 3000.0

println()
println("The Truck's cargo bed length is: \(myPickupTruck.cargoBedLength) and the cargo bed width is \(myPickupTruck.cargoBedWidth) and the total cargo area is \(myPickupTruck.totalCargoArea)")

//Scenario 2  - Set the length and width of cargo area and use only the getter to calculate the area
myPickupTruck.cargoBedLength = 50
myPickupTruck.cargoBedWidth = 60

println()
println("The Truck's cargo bed length is: \(myPickupTruck.cargoBedLength) and the cargo bed width is \(myPickupTruck.cargoBedWidth) and the total cargo area is \(myPickupTruck.totalCargoArea)")
