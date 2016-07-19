//: Default Implementations

protocol Shooting {
    var shootingSound: String { get }
    func shoot()
}

extension Shooting {
    func shoot() {
        print(shootingSound)
    }
}

class GameObject: Shooting {
    let shootingSound: String = "piu piu"
}

let gameObject = GameObject()
gameObject.shoot()

//:

extension Shooting {
    func reload() {
        print("click clack")
    }
}

gameObject.reload()
