//: # Protocols
//: ## Declare interface
protocol Edible {
    func eat()
}


//: ## Conform to a protocol
class Cupcake: Edible {
    func eat() {
        print("yum")
    }
}


let cupcake = Cupcake()
cupcake.eat()


//: ## Default Implementations
protocol Shooting {
    var shootingSound: String { get }
    func shoot()
}

extension Shooting {
    func shoot() {
        print(shootingSound)
    }
}

class GameObject: Shooting {
    let shootingSound: String = "piu piu"
}

let gameObject = GameObject()
gameObject.shoot()


// Protocols can be extended with new functionality, too
extension Shooting {
    func reload() {
        print("click clack")
    }
}

gameObject.reload()


//: ## Associated types
//: Protocols have associated types in place of generics.
protocol ComparatorProtocol {

    associatedtype T: Comparable

    static func compare(first: T, second: T) -> Bool

}

extension ComparatorProtocol {

    static func compare(first: T, second: T) -> Bool {
        return first == second
    }

}

struct StringComparator: ComparatorProtocol {

    typealias T = String

}

let areStringsEqual = StringComparator.compare(first: "Foo", second: "Bar") // false


//: ## Example
//: The Swift Standard Library shows how powerful protocol oriented programming can be.
public struct Position {

    public let x: Int
    public let y: Int

}

let a = Position(x: 1, y: 1)
let b = Position(x: 1, y: 1)


//: ### Comparable
//: Implement `Comparable` and get the other operators for free
extension Position: Comparable {
    // Protocol conformances can be declared in extensions
}

public func == (lhs: Position, rhs: Position) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}

public func < (lhs: Position, rhs: Position) -> Bool {
    return lhs.x + lhs.y < rhs.x + rhs.y
}

let larger = a > b
let smallerOrEqual = a <= b

