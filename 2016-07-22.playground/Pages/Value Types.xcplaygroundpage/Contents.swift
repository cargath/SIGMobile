//: # Values Types

struct Car {

    var isDriving: Bool = false

    // Mark as mutating when you need to change properties
    mutating func setDriving(bool: Bool) {
        isDriving = bool
    }

}


let aCar = Car()
var anotherCar = aCar // Swift knows this needs to be a variable, not a constant

anotherCar.setDriving(bool: true)


//: `aCar` and `anotherCar` are two different instances of `Car`
aCar.isDriving // false
anotherCar.isDriving // true

