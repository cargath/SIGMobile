//: # Other stuff
//: ## Access control
public class MyClass {

    public func foo() {
        // Accessible everywhere
    }

    internal func bar() {
        // Accessible in the same module
    }

    private func foobar() {
        // Accessible in the same file
    }

}


//: ## `inout` parameters
//: Please, don't do this.
func sideEffectsAreEvil(_ x: inout Int) {
    x = 10
}

var x: Int = 0

sideEffectsAreEvil(&x)

print(x) // prints "10"


//: ## Custom operators
struct Vector2D {
    var x = 0.0, y = 0.0
}

infix operator +- { associativity left precedence 140 }

func +- (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y - right.y)
}

let firstVector = Vector2D(x: 1.0, y: 2.0)
let secondVector = Vector2D(x: 3.0, y: 4.0)

let plusMinusVector = firstVector +- secondVector // (4, -2)


//: ## Unicode support
enum 💩: ErrorProtocol {

    case 😐
    case 😵

}

let errorCase: 💩 = .😵


//: ## @autoclosure
//: With @autoclosure you can omit the curly braces.
//: Useful e.q. for writing asserts.
func foo(_ closure: @autoclosure () -> Bool) {
    if closure() {
        print("It's true")
    }
}

foo(2 > 1)
// prints "It's true"


//: ## @noescape
//: Prevent closure from leaving the body of a function.
var escapeRoute: () -> Void

func hereBeDragons(closure: @noescape () -> Void) {
    // escapeRoute = closure
}


//: ## Selectors
//: Compile-time checked.
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {

        super.viewDidLoad()

        _ = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(myCallback))
    }

    func myCallback() {
        //
    }

}


//: ## Preprocessor makros
//: Can be defined in project settings.
#if DEBUG
    print("if you're reading this, you are a developer!")
#else
    print("foo")
#endif


//: ## Checking API availability
if #available(iOS 9, OSX 10.10, *) {
    // Use iOS 9 APIs on iOS, and use OS X v10.10 APIs on OS X
} else {
    // Fall back to earlier iOS and OS X APIs
}


//: ## Mark availability
@available(iOS, obsoleted: 1.0, deprecated: 2.0, message: "because", renamed: "myOtherFunc()")
func myFunc() {
    //
}

@available(iOS, introduced: 1.0)
func myOtherFunc() {
    //
}


//: ## Special literals
func myDebugPrint() {
    print("\(#file) \(#function) \(#line) \(#column)")
}

myDebugPrint()
// prints "filename.swift myDebugPrint() 59 45"

