//: # Advanced Initializers

import UIKit


//: ## Required initializers
class MyView: UIView {

    init(value: Int) {
        // Initializers of subclasses must call initializers on superclass.
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Every subclass must implement required initializers (if it implements other initializers).
        // This one comes from a protocol `NSCoding` that UIView conforms to.
        fatalError("init(coder:) has not been implemented")
    }

}


//: ## Convenience initializers
class MyOtherView: UIView {

    var foo: String? // `let` doesn't work here, see below

    convenience init(value: Int) {
        // Convenience initializers must call an initializer on the same object.
        // They don't actually initialize an object by themselves,
        // i.e. they don't guarantee all properties have been initialized.
        self.init()
    }

}


//: ## Deinitializers
class VolatileView: UIView {

    deinit {
        // perform the deinitialization
    }

}

