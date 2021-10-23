//observed propertyについて
//値を計算する必要がなく（getter必要なし），値の変化だけに対応（setterのみ必要）する場合に利用

//条件
//computed propertyと同様に必ずvarで定義

//observerとして，willSet{}とdidSet{}がある
//wilSet{}: propertyに値がsetされ，propertyが変更される直前に実行
//didSet{}: propertyに値がsetされ，propertyが変更された後に実行

import Foundation

var pizzaInInches: Int = 10 {
    willSet {
        print(pizzaInInches)//willSet内でoldValueにアクセス（willSetではまた値が変更されていない）
        print(newValue)//この後setされる値
    }
    didSet {
        print(oldValue)//値がsetされる前の値
        print(pizzaInInches)//didSet内でnewValueにアクセス（didSetでは既に値が変更されている）
    }
}

pizzaInInches = 8//値がsetされた時にobserverを実行


//observed propertyを利用することで，値にvalidationをかけることができる
var pizzaInInches2: Int = 10 {
    willSet {
    }
    didSet {
        if pizzaInInches2 > 18 {
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInInches2 = 18
        }
    }
}

pizzaInInches2 = 35//値がsetされた時にobserverを実行
print(pizzaInInches2)
