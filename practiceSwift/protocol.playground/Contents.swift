
// By using protocols, we can separate the flying behavior from the bird class
// and can have both classes and structures that can fly

// notification!: inheritance only works for classes.

// protocolとは：sertificationやresumeのようなもの．protocolに必要条件を記述することで，そのprotocolを従わせたclassやstructを定義できる．
// protocol methodは中身を記述しない.
// protocolに従うclassを定義した場合，そのclass内ではprotocol内に書かれたpropetyやmethodを定義しないといけない

// protocol使用例として，airplane, eagle, penguinに対して，飛ぶものにはCanfly protocolを従わせる．

protocol Canfly {
    func fly()
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
    func fly() {
        print("The airplane is flying.")
    }
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

struct FlyingMuseum {
    // 引数の型として，Protocolを指定できる！！（ここ大事）
    func flyingDemo(flyingObject: Canfly) {
        flyingObject.fly()
    }
}

let myAirplane = Airplane()
let myEagle = Eagle()
let myPenguin = Penguin()
//myAirplane.fly()
//myEagle.fly()
//myPenguin.swim()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
// museum.flyingDemo(flyingObject: myPenguin) // myPenguinはCanflyプロトコルに従わないのでerrorになる
