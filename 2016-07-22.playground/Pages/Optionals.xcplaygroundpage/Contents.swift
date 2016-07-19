//: Optionals

var optionalValue: Int?

optionalValue = 5

// unwrap with ?
// nothing happens when nil
optionalValue?.advanced(by: 3)

// force unwrap with !
// crashes when nil
optionalValue!.advanced(by: 3)
