//: # Error handling
//: ## Error types
enum MyError: ErrorProtocol {
    case TerribleError(msg: String)
}


//: ## Throwing an error
func foobar(_ value: Bool) throws -> Int {
    if value {
        throw MyError.TerribleError(msg: "kap0tt")
    } else {
        return 42
    }
}


//: ## Catching an error
do {
    defer {
        // Called when leaving `do` (if an error is thrown or not),
        // but before entering `catch`
        print("Do this eventually")
    }
    try foobar(false)
} catch {
    print("whoops")
}


do {
    try foobar(false)
} catch let error {
    print(error)
}


do {
    try foobar(false)
} catch MyError.TerribleError {
    print("whoops")
}


do {
    try foobar(false)
} catch MyError.TerribleError(let msg) {
    print(msg)
}


//: ## Ignoring an error
let optional = try? foobar(false) // `nil` when an error was thrown

let forced = try! foobar(false) // crashes upon error


//: ## Rethrowing
extension Array {

    func each(iterator: (Element) -> Void) {
        for element in self {
            iterator(element)
        }
    }

    func each(iterator: (Element) throws -> Void) throws {
        for element in self {
            try iterator(element)
        }
    }

}


// The above can be shortened to:
extension Array {

    func reEach(iterator: (Element) throws -> Void) rethrows {
        for element in self {
            try iterator(element)
        }
    }

}

