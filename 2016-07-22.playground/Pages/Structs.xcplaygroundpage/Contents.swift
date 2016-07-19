//: Structs

// always final
struct Point {

    let x: Int
    let y: Int

    static func sum(x: Int, y: Int) -> Int {
        return x + y
    }

    func sum() -> Int {
        return Point.sum(x: x, y: y)
    }

}

let point = Point(x: 1, y: 2) // default initializers
