import UIKit

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

struct Bird {
    func fly() {
        print("Flying sky.")
    }
}

let toshiki = Human(n: "Toshiki")
let taro = Human(n: "Taro")
let nemo = Fish(n: "Nemo")
let poppo = Bird()

let neighbours1 = [toshiki, taro, nemo]//要素のオブジェクトの型(subclass)は異なるが，superclassは同じなので配列の要素に入れられる．配列の型はsuperclassの型Animalになる．


//Any型: どんなクラス，構造体，型にも従える
// Any型の例
let num = 2
//let neighbours2 = [toshiki, taro, nemo, num]//numはint型で他とは違う型なので，同じ配列に入れられずエラー(入れたい場合は以下のようにAny型を使う)
let neighbours2: [Any] = [toshiki, taro, nemo, num]//どんなクラス，構造体，型も入れることができる

//AnyObject型：classから生成されたobjectのみに従える
// AnyObject型の例
//let neighbours3: [AnyObject] = [toshiki, taro, nemo, num]//AnyObjectはクラスから生成されたobjectのみを入れることができるので，structのIntから生成されたnumは入れることができずエラー
//let neighbours3: [AnyObject] = [toshiki, taro, nemo, poppo]//poppoはstructから生成されたobjectなのでエラー
let neighbours3: [AnyObject] = [toshiki, taro, nemo]


//NSObject型: appleのfoudationのclassから生成されたobjectのみに従える
let numNS: NSNumber = 123
let wordNS: NSString = "abc"
//let neighbours4: [NSObject] = [toshiki, taro, nemo]//エラー
//let neighbours4: [NSObject] = [toshiki, taro, nemo, numNS]//エラー
let neighbours4: [NSObject] = [numNS, wordNS]
