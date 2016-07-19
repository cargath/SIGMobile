//: Reference Types

class Car {

    var isDriving: Bool = false

    func setDriving(bool: Bool) {
        isDriving = bool
    }

}

let aCar = Car()
let anotherCar = aCar

anotherCar.setDriving(bool: true)

aCar.isDriving
anotherCar.isDriving
