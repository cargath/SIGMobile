//: # Closures

//: Functions can be used as variables in Swift
func sum(a: Int, b: Int) -> Int {
    return a + b
}

let function = sum // (Int, Int) -> Int
let result = function(a: 2, b: 2) // 4


//: Functions can also be used as parameters in Swift
func higherOrderFunction(value: Int, function: (Int, Int) -> Int) -> Int {
    return function(value, 40)
}

let answer = higherOrderFunction(value: 2, function: sum) // 42


//: Functions can be declared in-place
var anotherAnswer = higherOrderFunction(value: 2, function: { (a: Int, b: Int) -> Int in
    return a * b
})


//: Trailing closures can be written like this:
anotherAnswer = higherOrderFunction(value: 2) { (a: Int, b: Int) -> Int in
    return a * b
}


//: Swift can also infer the correct types
anotherAnswer = higherOrderFunction(value: 2) { a, b in
    return a * b
}


//: And you can use $0...$n to access parameters
anotherAnswer = higherOrderFunction(value: 2) {
    return $0 * $1
}


//: Why would you do this?
//: If you look at the standard library, some things are actually more legible like this.
let array = [1, 2, 3, 4]

array.forEach { // looks just like a `for-in` loop
    print($0)
}


//: The Swift Standard Library makes extensive use of Closures, and you should, too.
let total = array.reduce(0, combine: +) // 10

let incrementedArray = array.map { $0 + 1 } // [2, 3, 4, 5]

let nonOptionals = [1, nil, 3, 42, nil].flatMap { $0 } // [1, 3, 42]

let filteredArray = [1, 2, 3, 4, 5].filter { $0 > 2 } // [3, 4, 5]

