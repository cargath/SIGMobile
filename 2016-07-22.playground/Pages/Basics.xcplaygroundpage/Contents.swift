//: # Basics
//: ## Constants
let g = 9.81 // infers 'Double'


//: ## Variables
var x = 0 // infers 'Int'
x = 42 / 4

var y: Float = 0 // type annotation to explicitly use 'Float'
y = 42 / 4


//: ## Collection Types
//: ### Arrays
let anArray: [Int] = [1, 2, 3, 4]


//: ### Dictionaries
let aDictionary: [String: Int] = [
    "Foo": 42,
    "Bar": 32
]

let valueForKey = aDictionary["Foo"] // 42


//: ### Tuples
let aTuple: (Int, Int) = (1, 2)
let (first, second) = aTuple

let anotherTuple: (Int, Int, Int) = (42, 6, 64)
let (a, b, c) = anotherTuple


//: ## Functions
func sum(x: Int, y: Int) -> Int {
    return x + y
}

let s = sum(x: 2, y: 2)


//: ### inner vs. outer parameter names
func append(value i: Int, to array: [Int]) -> [Int] {
    var newArray = array
    newArray.append(i)
    return newArray
}

let array: [Int] = []
let newArray = append(value: 42, to: array)


//: ### use underscores to surpress outer parameter names
func mul(_ x: Int, _ y: Int) -> Int {
    return x * y
}

let m = mul(2, 2)


//: ### Default parameters
func doSomething(_ with: String = "foobar") {
    print(with)
}

doSomething()


//: ## Typealiases
typealias JSONObject = [String: AnyObject]

