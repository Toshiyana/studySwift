//1. Force Unwrapping(optional!): 強制的にunwrappしてoptional型からvalueを取り出す．nilが絶対入らない場合に利用。ただし、仮にnilが入ってしまってエラーになった時、複数のコードやファイルが存在した場合、その原因を見つけるのが大変→2番。

//let myOptional: String?
//myOptional = "hello"
//let text: String = myOptional!


//2. Check for nil value(if optional != nil {optional!})
// 1番より安全なアンラッピング
// ただし，nil出ない時にも!を付けないといけないのは冗長→3番。

//let myOptional: String?
//myOptional = nil
//if myOptional != nil {
//    let text: String = myOptional! //この部分が冗長
//} else {
//    print("myOptional was found to be nil.")
//}


//3. Optional Binding(if let safeOptional = optional {safeOptional})
// このoptionalの使い方をするのが最も一般的らしい．
// myOptionalがnilでなかったら，定数safeOptionalに代入
// これにより!をif文内でつける必要がなくなる
// ただし，myOptionalがnilの時にdefault値を与えたい場合は4番

//let myOptional: String?
//myOptional = nil
////myOptional = "hello"
//if let safeOptional = myOptional {
//    let text: String = safeOptional
//    print(text)
//} else {
//    print("myOptional was found to be nil.")
//}


//4. Nil Coalescing Operator(optional ?? defaultValue)
// optionalがnilでない場合，その値をそのまま用いる
// optionalがnilの場合，defaultValueを用いる

//let myOptional: String?
//myOptional = "good bye" // output: "good bye"
////myOptional = nil // output: "hello"
//let text: String = myOptional ?? "hello"
//print(text)



//5. Optional Chaining(optional?.property, optional?.method())
// optional型のclass or struct

// Optional Chaingingなしの場合(安全で無い)
// オブジェクトを生成していない状態で，プロパティを取り出すために，オブジェクトをforce unwrappingするとエラー（安全でない）→ Optional Chainingを利用
//struct MyOptional {
//    var property = 123
//    func method() {
//        print("I am the struct's method.")
//    }
//}
//
//let myOptional: MyOptional? //optional型のstructのオブジェクトを定義
//myOptional = nil // output: error
////myOptional = MyOptional() // output: 123
//print(myOptional!.property)//optional型のオブジェクトからプロパティを取り出すためには，オブジェクトをunwrapする必要あり

// Optional Chaingingありの場合
// (optional?.property, optional?.method()): オブジェクトがnilでない場合，property, methodにアクセスできる
struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional? //optional型のstructのオブジェクトを定義
myOptional = nil // output: nil
//myOptional = MyOptional() // output: Optional(123)
print(myOptional?.property)// methodも同様のやり方
