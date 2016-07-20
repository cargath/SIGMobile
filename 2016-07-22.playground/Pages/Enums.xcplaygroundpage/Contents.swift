//: # Enums

enum Color {

    case Red
    case Green
    case Blue
    case Yellow


    // Enums can have computed properties...
    var property: String {
        return "Foobar"
    }

    // ...and functions
    func printProperty() {
        print(property)
    }

}

let aColor: Color = .Red


//: ## Enums with raw values
enum Measure: String {

    case Meter = "m"
    case Kilometer = "km"
    case Millimeter = "mm"

}

let measure = Measure(rawValue: "m")


//: ## Enums with parameters
enum Maybe<T> {

    case Some(value: T)
    case None

}

let some: Maybe = .Some(value: "a String") // infers T == String
let none: Maybe<String> = .None

switch some {
    case .Some(let value):
        print(value) // "a String"
    default:
        break
}

