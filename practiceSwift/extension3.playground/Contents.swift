// extensionをprotocolに用いることで，protocolのdefaultの処理を記述可能．

import UIKit

protocol Canfly {
    func fly()
}

//extensionでprotocolにdefaultの処理を与える
extension Canfly {
    func fly() {
        print("The object takes off into the air.")
    }
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
}

struct Airplane: Canfly {
    // fly()を記述しない場合，extensionによるdefaultの処理が実行される
    
//    func fly() {
//        print("The airplane is flying.")
//    }
}

class Eagle: Bird, Canfly {
    func fly() {
        print("The eagle is flying.")
    }
    
    func soar() {
        print("The eagle glides in the air using air cullents.")
    }
}

// ペンギンは飛ばないので，Canflyプロトコルに従わせない
class Penguin: Bird {
    func swim() {
        print("The penguin is swimming.")
    }
}

let myAirplane = Airplane()
let myEagle = Eagle()
let myPenguin = Penguin()
myAirplane.fly()
myEagle.fly()
myPenguin.swim()
