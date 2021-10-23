//singleton: 全てのclass間で共有されるobject.class内で定義されるobject.

import UIKit

let defaults = UserDefaults.standard//.standardはsingleton．同じ.plistファイルに読み込み・保存が可能

class Car {
    var colour = "red"

    static let singletonCar = Car()
}

let myCar = Car.singletonCar//UserDefaults.standardと同じ構造
myCar.colour = "blue"

let yourCar = Car.singletonCar
print(yourCar.colour)//singletonによりobjectが共有されているので，blue


class A {
    init() {
        Car.singletonCar.colour = "Brown"
    }
}

class B {
    init() {
        print(Car.singletonCar.colour)
    }
}

let a = A()
let b = B()//singletonよりbrownを出力


//singletonを用いない場合
//objectが異なるのでcolourも異なる

//class Car {
//    var colour = "red"
//}
//
//let myCar = Car()
//myCar.colour = "blue"
//
//let yourCar = Car()
//print(yourCar.colour)
