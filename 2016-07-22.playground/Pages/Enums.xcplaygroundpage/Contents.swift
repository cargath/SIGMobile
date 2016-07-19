//: Enums

enum Color {

    case Red
    case Green
    case Blue

    // can have computed properties + functions

    var property: String {
        return "Foobar"
    }

    func printProperty() {
        print(property)
    }

}

let aColor: Color = .Red

switch aColor {
    case .Red:
        print("Red")
    case .Green:
        print("Green")
    default:
        print("Blue")
}

// Enums with raw values
enum Measure: String {

    case Meter = "m"
    case Kilometer = "km"
    case Millimeter = "mm"

}

let measure = Measure(rawValue: "m")

// Enums with parameters
enum Maybe {

    case Some(value: Any)
    case None

}

let some: Maybe = .Some(value: "a String")
let none: Maybe = .None
