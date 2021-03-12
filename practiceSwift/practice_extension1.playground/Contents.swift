import UIKit

//var num = 3.123456
//num.round()
//print(num) // output: 3

// .round()で小数点以下を指定して四捨五入できるよう，extensionで拡張

extension Double {
    
    func round(to places: Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

var num = 3.123456
num.round(to: 3)
