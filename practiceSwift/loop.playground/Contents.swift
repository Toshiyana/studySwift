import Foundation

//for loopの例

let fruits = ["Apple", "Orange", "Grape"]//Array型で順番も記憶
let fruitsArr: Array = ["Apple", "Orange", "Grape"]//上と同じ
let fruitsSet: Set = ["Apple", "Orange", "Grape"]//Set型で順番は記憶しない．その分アクセスが早い
//
//for fruit in fruitsSet {
//    print(fruit)
//}

let contacts = ["Adam": 123, "Jack": 456, "Kevin": 789]

//for item in contacts {
//    print(item.key)
//    print(item.value)
//}

let word = "abcdefghijklmnopqrstuvwxyz"

//for letter in word {
//    print(letter)
//}

let halfOpenRange = 1..<5

//for num in halfOpenRange {
//    print(num)
//}

let closedRange = 1...5

//for num in closedRange {
//    print(num)
//}

//for _ in closedRange {
//    print("Hello!")
//}


//while loopの例

var now = Date().timeIntervalSince1970//標準のUnixTime
let oneSecondFromNow = now + 1

// １秒でコンピュータがwaitingを出力できる数を計測
while now < oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("waiting...")
}
