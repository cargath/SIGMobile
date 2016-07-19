//: didSet / willSet

class StoredPerson {

    var firstName: String = "" {
        didSet {
            name = "\(firstName) \(lastName)"
        }
    }

    var lastName: String = "" {
        willSet {
            name = "\(firstName) \(lastName)"
        }
    }

    var name: String = ""

}

let storedPerson = StoredPerson()
print(storedPerson.name)

storedPerson.firstName = "Mocky"
print(storedPerson.name)

storedPerson.lastName = "McMockface"
print(storedPerson.name)
