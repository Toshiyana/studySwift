//computed propertyのsetterについて

import Foundation

//stored property(値が固定)
let pizzaInInches: Int = 12

//Computed property(値が動的に変化)

//setter: 値が新しくsetされた時に実行するset{}内のコード
var pizzaOfSlices: Int {
    get {
        return pizzaInInches - 3
    }
    
    set {//newValueは固有の引数で，新しくpizzaOfSlicesにsetされた値が入る
        print("pizzaOfSlice now has a new value which is \(newValue).")
    }
}

//値が新しくsetされた時に，set{}が実行される
//print(pizzaOfSlices)//set{}実行されない
pizzaOfSlices = 7//set{}実行される


//get{}しか持たない場合，computed propertyはread onlyになる
var pizzaOfSlices2: Int {
    get {
        return pizzaInInches - 3
    }
}

//pizzaOfSlices2 = 7//read onlyなので値をset使用するとエラーになる
let a = pizzaOfSlices2 * 3//これはreadなのでエラーにならない
