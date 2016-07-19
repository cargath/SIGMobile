//: # Other stuff

//: ## Typealiases
typealias JSONObject = [String: AnyObject]


//: ## Access types
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

