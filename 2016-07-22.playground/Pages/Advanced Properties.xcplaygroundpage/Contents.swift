//: # Advanced properties

//: ## Computed properties
class ComputedPerson {

    let firstName: String
    let lastName: String

    // computed properties
    var name: String {
        return "\(firstName) \(lastName)"
    }

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
}

let computedPerson = ComputedPerson(firstName: "Mocky", lastName: "McMockface")
print(computedPerson.name) // "Mocky McMockface"


//: ## Getters and setters
class StoredPerson {

    var name: String = ""


//: Custom getters and setters

    var _age: Int = 0

    var age: Int {
        get {
            return _age
        }
        set {
            _age = newValue
        }
    }
    

//: `didSet` is called _after_ the variable was changed

    var firstName: String = "" {
        didSet {
            name = "\(firstName) \(lastName)"
            print("old value: " + oldValue) // you have access to the old value
            print("new value: " + firstName) // `firstName` is already the new value
        }
    }


//: `willSet` is called _before_ the variable is changed

    var lastName: String = "" {
        willSet {
            name = "\(firstName) \(lastName)"
            print("old value: " + lastName) // `lastName` is still the old value
            print("new value: " + newValue) // you have access to the new value
        }
    }



}


let storedPerson = StoredPerson()
print(storedPerson.name) // ""

storedPerson.firstName = "Mocky"
print(storedPerson.name) // "Mocky"

storedPerson.lastName = "McMockface"
print(storedPerson.name) // "Mocky"


//: ## lazy variables
class MyClass {

    lazy var foo: String = "Foobar" // initialzed upon first access

}


//: ## setup objects in place
import UIKit

class MyView: UIView {

    let view: UIView = {
        let view = UIView()
        view.backgroundColor = .blue()
        return view
    }()

    let anotherView: UIView = { view in
        view.backgroundColor = .blue()
        return view
    }(UIView())

}

