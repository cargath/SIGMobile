//: # Values Types

struct Car {

    var isDriving: Bool = false

    mutating func setDriving(bool: Bool) {
        isDriving = bool
    }

}

let aCar = Car()
var anotherCar = aCar

anotherCar.setDriving(bool: true)

//: `aCar` and `anotherCar` are two different instances of `Car`
aCar.isDriving // false
anotherCar.isDriving // true
