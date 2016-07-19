//: # The delegate pattern

//: The delegate protocol.
//: Must be a `class` protocol to enable `weak` referencing.
protocol MyClassDelegate: class {

    func doStuff(value: Int)

}


//: Class that wants to delegate functionality.
//: Mark delegate as `weak` to avoid retain cycles.
class MyClass {

    weak var delegate: MyClassDelegate?

    func somethingHappened() {
        if let delegate = self.delegate {
            delegate.doStuff(value: 42)
        }
    }

}


//: An implementation of the delegate
class DelegateImpl: MyClassDelegate {

    func doStuff(value: Int) {
        print(value)
    }

}

