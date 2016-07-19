//: Classes

class Person {

    let firstName: String
    let lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    // Static Functions
    // are final
    static func name() -> String {
        return "Mocky McMockface"
    }

    // Class Functions
    // can be overridden
    class func name(firstName: String, middleName theMiddleName: String, _ lastName: String) -> String {
        return "\(firstName) \(theMiddleName) \(lastName)"
    }

    // Instance Functions
    func name() -> String {
        return Person.name(firstName: firstName, middleName: "Mc", lastName)
    }
    
}

class SpecificPerson: Person {

    override func name() -> String {
        return "Foobar McFooface"
    }

}
