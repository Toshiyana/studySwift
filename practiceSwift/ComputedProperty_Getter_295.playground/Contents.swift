//computed propertyとgetterについて

import Foundation

//stored property(値が固定)
let pizzaInInches: Int = 12
//var pizzaOfSlices: Int = 6

//Computed property(値が動的に変化)
//条件
//* 必ずvarで定義
//* 必ずtypeを指定


var pizzaOfSlices: Int {
    //このブロック内のコードをgetterと呼ぶ（このpropertyの値を得るために実行するコードなので）
    
    //pizzaInInchesを変えると，pizzaOfSlicesが動的に変化
    return pizzaInInches - 4
}

//gettterの部分を正式に書いた場合, get{}で囲む(上記は省略版，動作は同じ)
var pizzaOfSlices2: Int {
    get {
        return pizzaInInches - 3
    }
}

//funcでも同様のことを書けるが，funcのinput，outputがない時などは，computed propertyが使えないかを考える
var pizzaOfSlicesByFunc: Int = 0
func calcPizzaOfSlices() {
    pizzaOfSlicesByFunc = pizzaInInches - 2
}



//computed propertyの場合
print(pizzaOfSlices * 2)
print(pizzaOfSlices2)

//関数を用いた場合
calcPizzaOfSlices()
print(pizzaOfSlicesByFunc)
