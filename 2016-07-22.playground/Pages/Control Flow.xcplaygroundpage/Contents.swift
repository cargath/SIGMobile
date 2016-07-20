//: # Control Flow
//: ## Switch
func checkString(string: String) {

    switch string {

        case "Foobar":
            print("Something")

        case "Foo", "Bar": // Match multiple cases
            print("Foo Bar!")

        case "Take a break":
            break // Explicitly don't do anything

        case "Return to sender":
            return

        case "Blub":
            print("Blub")
            fallthrough // Explicitly fall through

        default:
            print(string)
    }
}


//: ### Value bindings
let point = (2, 0)

switch point {
    
    case (let x, 0):
        print("on the x-axis with an x value of \(x)")

    case (0, let y):
        print("on the y-axis with a y value of \(y)")

    case let (x, y): // Prefer leading `let` when unwrapping multiple parameters
        print("somewhere else at (\(x), \(y))")
}


//: ## Loops
//: ### while-loops
var i = 0

while i < 10 {
    i += 1
}

repeat {
    i -= 1
} while i > 10


//: ### for-loops
for i in 0 ... 10 {
    print(i)
}

for _ in 0 ..< 11 {
    // Do awesome stuff 10 times
}

for i in (0 ... 10).reversed() { // loop the other way round
    print(i)
}


//: ### for-each-loops
let stringArray = ["Foo", "Bar"]

for string in stringArray {
    print(string)
}


//: ### pattern matching
for string in stringArray where string == "Foo" {
    print(string)
}


//: ### labeled statements
labelName: while i < 10 {

    i += 1

    switch i {
        case 2:
            break labelName
        default:
            continue labelName
    }
}

