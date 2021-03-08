import Foundation
//エラーを対処するときにdo-catch構文を利用
//呼び出すメソッドがthrowsキーワードでエラー発生の宣言がされている場合，そのめっそどの呼び出し時はtryをつける


//例として，エラーを発生させるメソッドを作成
//エラーを投げる可能性のあるメソッドはthrowsを書く
func printText(text: String) throws {
    //エラーを投げる可能性のある処理
    if text.isEmpty {
        //NSError:エラーが発生した箇所を特定するためのドメイン、エラーコード、任意の情報を指定してエラーを投げることが可能
        throw NSError(domain: "error", code: -1, userInfo: userInfo: nil)
    }
    print(text)
}

//投げられたエラーを対象するために，do-catch構文を利用
//do節の内容を実行してエラーだった場合，catch節の内容を実行
do {
    //do節に，tryをつけて呼び出すメソッドを記述
    try printText(text: "")
} catch {
    //catch節にエラー時の処理を記述
    print("エラーが発生しました")
}
