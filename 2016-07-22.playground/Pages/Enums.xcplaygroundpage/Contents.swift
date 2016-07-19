//: # Enums

enum Color {

    case Red
    case Green
    case Blue
    case Yellow


//: Enums can have computed properties + functions

    var property: String {
        return "Foobar"
    }

    func printProperty() {
        print(property)
    }

}


//: Note that cases don't fall through, even without `break` or `return`

let aColor: Color = .Red

switch aColor {
    case .Red:
        print("Red")
    case .Green, .Yellow:
        print("Green or Yellow")
    default:
        print("Blue")
}


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

let some: Maybe = .Some(value: "a String")
let none: Maybe<String> = .None

switch some {
    case .Some(let value):
        print(value) // "a String"
    default:
        break
}


//: Multiple parameters
enum MaybePair<T> {

    case Some(first: T, second: T)
    case None

}

let pair: MaybePair = .Some(first: "Foo", second: "Bar")

switch pair {
    case let .Some(first, second): // Prefer leading `let` when unwrapping multiple parameters
        print(first, second) // "Foo Bar"
    default:
        break
}

