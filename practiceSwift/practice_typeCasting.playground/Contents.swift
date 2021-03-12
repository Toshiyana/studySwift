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


let toshiki = Human(n: "Toshiki")
let taro = Human(n: "Taro")
let nemo = Fish(n: "Nemo")

let neighbours = [toshiki, taro, nemo]//要素のオブジェクトの型(subclass)は異なるが，superclassは同じなので配列の要素に入れられる．配列の型はsuperclassの型Animalになる．
let neighbour1 = neighbours[0]//Human型のtoshikiを取り出しても，neighbour1はAnimal型のまま．

//is: objectのデータ型が一致するか確かめるときに利用(Type Checking)
//if neighbours[1] is Human {
//    print("The neighbour is a human.")
//}

func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            //animal.breatheUnderWater()//自分の中ではFish型と分かっているが，animalはAnimal型なのでbreatheUnderWater()を持たず，実行できない -> 強制的DownCastにより改善可能
            
            //as!: superclassからsubclassに強制的に型変換（Forced DownCast）, 変化先のsubclassになることが自明の場合に利用．（自明でなく，変換できるかわからないときはas?を利用）
             //animalがFish型であることは自明なのでas!(強制的DownCastingが利用可能)
            let fish = animal as! Fish
            fish.breatheUnderWater()
            
            
            //as: subclassからsuperclassに型変換できる（Upcast），あんまり使う機会はない
            //subclassからsuperclassへの変換は絶対に可能なので，!や?がない
            let animalFish = fish as Animal
        }
    }
}
findNemo(from: neighbours)

//as?: 変化先のsubclassになることが自明でなく，変換できるかわからないときに利用(as!よりも安全)
let fish = neighbours[1] as? Fish
fish?.breatheUnderWater()//fishがnilでなければ実行(optional chainingを利用)

//optional bindingの場合
if let fish = neighbours[1] as? Fish {
    fish.breatheUnderWater()
} else {
    print("Casting has failed.")
}

//// type castingの例（doubleからintへ）
//let myDouble = 0.0
//let myDoubleAsAnInt = Int(myDouble)//このtype castの仕方はよくない
