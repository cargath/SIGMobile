//: # Reference Types

class Car {

    var isDriving: Bool = false

    func setDriving(bool: Bool) {
        isDriving = bool
    }

}


let aCar = Car()
let anotherCar = aCar

anotherCar.setDriving(bool: true)


//: Both `aCar` and `anotherCar` point to the same object:
aCar.isDriving // true
anotherCar.isDriving // true

