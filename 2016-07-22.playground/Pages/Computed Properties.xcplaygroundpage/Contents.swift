//: Computed Properties

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
print(computedPerson.name)
