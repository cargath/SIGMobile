//: # Protocols

//: Protocols declare an interface
protocol Edible {
    func eat()
}


//: Make a class conform to a protocol
class Cupcake: Edible {
    func eat() {
        print("yum")
    }
}


let cupcake = Cupcake()
cupcake.eat()


//: Default Implementations
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


//: Protocols can be extended with new functionality, too
extension Shooting {
    func reload() {
        print("click clack")
    }
}

gameObject.reload()


//: ## Examples
//: The Swift Standard Library shows how powerful protocol oriented programming can be.

//: ### Equatable
public struct Position: Equatable {

    public let x: Int
    public let y: Int

    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

}

public func == (lhs: Position, rhs: Position) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}


let a = Position(x: 1, y: 1)
let b = Position(x: 1, y: 1)
let c = Position(x: 3, y: 6)

print(a == b) // true
print(a == c) // false


//: ### Comparable
extension Position: Comparable {
    // Note that we already implemented `==` for `Equatable`
}

public func < (lhs: Position, rhs: Position) -> Bool {
    return lhs.x + lhs.y < rhs.x + rhs.y
}


//: Implement `Comparable` and get the other operators for free
let larger = a > b
let smallerOrEqual = a <= b

