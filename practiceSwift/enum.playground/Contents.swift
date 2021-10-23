// 列挙型：値型の一種で、関連する値のグループに共通の型を定義してまとめたもの。
// 用途：
// 考えうるパターン以外を受け付けたくない時に利用。
// <-case以外のものを入力すると、コンパイルエラーになるため。
// 特徴：
// * 構造体やクラス同様に、プロパティやメソッドを定義可能（ただし、stored propertyは持てない）
// * 値型enum (Raw value enum)で定義可能
// * 関連型enum（Associated value enum）で定義可能

// 構文
//enum 型名 {
//  case ケース名
//  case ケース名
//  case ケース名
//}

import Foundation

// 例1: 血液型はa,b,o,ab以外存在せず、他は受け付けたくない
// 悪い例（stringにした場合）
struct Person1 {
    let bloodType: String
}

Person1(bloodType: "A")
Person1(bloodType: "B")
Person1(bloodType: "")//これは受け付けたくないけど、コードが通ってしまう
Person1(bloodType: "Taro")//これは受け付けたくないけど、コードが通ってしまう


// enumを利用した良い例
enum BloodType {
    case a
    case b
    case o
    case ab
}

struct Person2 {
    let bloodType: BloodType
}

Person2(bloodType: .a)
Person2(bloodType: .b)
Person2(bloodType: .o)
Person2(bloodType: .ab)
//Person2(bloodType: .z) // caseにないものを入れるとエラーになるので、間違えて他の値を入れることがなくなる
