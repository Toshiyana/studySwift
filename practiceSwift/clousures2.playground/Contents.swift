// 普通に書いた場合
//let array = [1,2,3,4,5]
//
//func addOne(n1: Int) -> Int {
//    return n1 + 1
//}
//
//// array.map：arrayの全要素に処理を加えたい場合に利用，引数に関数を取る
//array.map(addOne)

// クロージャーを利用して書いた場合
let array = [1,2,3,4,5]

// array.map：arrayの全要素に処理を加えたい場合に利用，引数に関数を取る
// trailing closuresより，関数の最後の引数がclosuresなので，()に入れない
print(array.map{$0 + 1})

// swiftのmap, reduce, filter関数を利用する際，クロージャーを使うとシンプルに書ける

// 利用例
// arrayの要素をstring型に変換
let newArray = array.map{"\($0)"}
print(newArray)
