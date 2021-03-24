//computed porpertyの使用例

import Foundation

let pizzaInInches: Int = 16
var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue//newValueにはsetされたnumberOfPizzaが入る
        numberOfPeople = totalSlices / slicesPerPerson//pizzaの枚数によって何人招待可能か
    }
}

//getterの実行
//print(numberOfPizza)//関数を呼び出す必要なく，変数を呼び出すだけで良い（利点）, 変数を呼び出した時にget{}内の処理が実行される

//setterの実行
numberOfPizza = 10
print(numberOfPeople)//setterによりnumberOfPeopleが更新
