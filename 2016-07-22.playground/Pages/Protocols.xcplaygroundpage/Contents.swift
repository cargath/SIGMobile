//: Protocols

protocol Shooting {
    func shoot()
}

class GameObject: Shooting {
    func shoot() {
        print("piu piu")
    }
}

let gameObject = GameObject()
gameObject.shoot()
