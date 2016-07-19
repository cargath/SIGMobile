//: Custom Operators

import Foundation

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

print(a == b)
print(a == c)
