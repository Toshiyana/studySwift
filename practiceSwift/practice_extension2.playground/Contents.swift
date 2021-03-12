import UIKit

//let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//button.backgroundColor = .red
//
//button.layer.cornerRadius = 25
//button.clipsToBounds = true


// extensionでUIButtonを拡張して，丸ボタンも作れるようにする
// UIButtonの中身のコードは，オープンソースではないため見ることはできないが，このように拡張することができる
extension UIButton {
    func makeCircular() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
}

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

button.makeCircular()
