// 関数の引数に関数を与える例
//func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
//    return operation(n1, n2)
//}
//
//func add(no1: Int, no2: Int) -> Int {
//    return no1 +  no2
//}
//
//func multiply(no1: Int, no2: Int) -> Int {
//    return no1 * no2
//}
//
//calculator(n1: 2, n2: 3, operation: add)
//calculator(n1: 2, n2: 3, operation: multiply)


// closuresの例（closures: anonymous functions）
// closuresを利用することで，上のコードをよりシンプルに表せる
// closuresは変数や関数の引数として，そのまま扱える
func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

// 1,2,3,4,5の順にコードがシンプル（5が最も記述量少ない）
// 1. クロージャー
//calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
//    return no1 * no2
//})

// 2. swiftは型推論できるのでクロージャーの引数の型を省略可能
//calculator(n1: 4, n2: 3, operation: { (no1, no2) in
//    return no1 * no2
//})

// 3. クロージャーを使うということは，何かを返すことが決まっているのでreturnも推論できるので，省略可能
//calculator(n1: 3, n2: 4, operation: { (no1, no2) in no1 * no2 })

// 4. クロージャーは$を用いて引数名も省略可能（$0が一つめの引数，$1が二つ目の引数）
//calculator(n1: 3, n2: 4, operation: { $0 * $1 })

// 5. 関数の最後の引数がクロージャーだった場合，クロージャーの引数名を省略可能(クロージャは丸括弧()に入れない，trailing closureと呼ばれる)
calculator(n1: 3, n2: 4) { $0 * $1 } //一番上の最初のコードに比べて，記述量が激減！
// ただし，クロージャーを用いると，可読性は下がるのでバランスを考えて利用（実務で覚えていく）
// また，上記のコードは n1 * n2と書く方がシンプルなので上のような使い方はしない．実際の使い方はpractice_closures2.playgroundで説明
