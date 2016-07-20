//: # The delegate pattern
//: ## The delegate
// Must be a `class` protocol to enable `weak` referencing.
protocol MyClassDelegate: class {

    func doStuff(value: Int)

}


class DelegateImpl: MyClassDelegate {

    func doStuff(value: Int) {
        print(value)
    }
    
}


//: ## Delegating class
class MyClass {

    // Mark delegate as `weak` to avoid retain cycles.
    weak var delegate: MyClassDelegate?

    func somethingHappened() {
        if let delegate = self.delegate {
            delegate.doStuff(value: 42)
        }
    }

}

