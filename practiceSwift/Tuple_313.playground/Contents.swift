import Foundation

//使い方

//pattern1
let touple1 = ("Toshi", 15)
print(touple1.0)//この使い方は分かりづらいので良くない

//pattern2
let touple2 = (name: "Toshi", age: 15)
print(touple2.name)

//pattern3
let touple3: (name: String, age: Int)
touple3 = (name: "Toshi", age: 15)
print(touple3.name)
