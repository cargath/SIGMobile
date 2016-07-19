//: # Optionals

//: Declare Optionals
var optionalValue: Int?

optionalValue = 5


//: Optional Chaining: unwrap with ?
//: (returns an optional that might be nil)
let unwrapped = optionalValue?.advanced(by: 3)


//: Force unwrap with !
//: (crashes when nil - only use this when absolutely necessary)
let forceUnwrapped = optionalValue!.advanced(by: 3)


//: Declare implicitly unwrapped optionals
var implicit: Int!

implicit = 8


//: Unwraps automatically
//: (but crashes when nil - only use this when absolutely necessary)
implicit.advanced(by: 4)


//: Unwrapping optionals with `if-let`
var optionalA: Int? = 4

if let optionalA = optionalA {
    print(optionalA)
}


//: Unwrapping multiple optionals + pattern matching
var optionalB: Int? = 12

if let optionalA = optionalA, optionalA != 2,
   let optionalB = optionalB, optionalA != optionalB {
    print(optionalA, optionalB)
}


//: Unwrapping optionals with `guard-let`
func doStuff() {
    guard let optionalA = optionalA else {
        return
    }
    print(optionalA)
}


//: Typecasting
let something: Any = 42

if let integer = something as? Int {
    print(integer)
}

let integer = something as! Int // again, don't do this unless absolutely necessary

