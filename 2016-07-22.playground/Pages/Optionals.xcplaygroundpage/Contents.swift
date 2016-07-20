//: # Optionals
//: ## Declare Optionals
var optionalValue: Int?

optionalValue = 5


//: ## Unwrap optionals
//: ### Optional Chaining
let unwrapped = optionalValue?.advanced(by: 3)
// Returns an optional that might be nil.


//: ### Force unwrap
let forceUnwrapped = optionalValue!.advanced(by: 3)
// Crashes when nil.
// Only use this when absolutely necessary.


//: ### Implicitly unwrapped optionals
var implicit: Int!

implicit = 8

implicit.advanced(by: 4) // Unwraps automatically (crashes when nil)


//: ### `if-let`
var optionalA: Int? = 4

if let optionalA = optionalA {
    print(optionalA)
}


var optionalB: Int? = 12

// Unwrapping multiple optionals + pattern matching
if let optionalA = optionalA, optionalA != 2,
   let optionalB = optionalB, optionalA != optionalB {
    print(optionalA, optionalB)
}


//: ### `guard-let`
func doStuff() {

    guard let optionalA = optionalA else {
        return
    }

    print(optionalA)
}


//: ### Typecasting
let something: Any = 42

if let integer = something as? Int {
    print(integer)
}

let integer = something as! Int // again, don't do this unless absolutely necessary

