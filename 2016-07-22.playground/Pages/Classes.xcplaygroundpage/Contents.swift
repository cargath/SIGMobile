//: # Classes
//: * are reference types
//: * can be subclassed

//: ## Create a class
class Person {

    let firstName: String
    let lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    // Static Functions (final)
    static func name() -> String {
        return "Mocky McMockface"
    }

    // Class Functions (can be overridden)
    class func name(firstName: String, middleName: String, lastName: String) -> String {
        return "\(firstName) \(middleName) \(lastName)"
    }

    // Instance Functions
    func name() -> String {
        return Person.name(firstName: firstName, middleName: "Mc", lastName: lastName)
    }
    
}


//: ## Create a subclass
class SpecificPerson: Person {

    override func name() -> String {
        return "Foobar McFooface"
    }

}


//: ## Final classes
final class NotSubclassable {

}

