// Delegateパターン：Protocolを通じて、あるクラスの処理の一部を他のクラスに任せること。

// 例：以下の例では、Calculatorプロトコルを通じて、ResultPrinterクラスの処理の一部（= printResult()）をAdditionCalculator、SubtractionCalculatorクラスに任せている。
// この例でDelegateパターンを用いる理由：
// * ResultPrinterはprintだけに着目し、計算処理は他に任せたい
// * 各計算手法を同じプロトコルに従わせることで、各手法のインスタンスの切り替えが可能になる。（<-同じメソッドを持つクラスのインスタンスを切り替えたい）

import Foundation

// main{}: ViewControllerのような位置。ResultPrinterを使う。
// class main {} //main.swiftではmain関数が自動実装されているので省略。

protocol Calculator {
    func calculate(value1: Int, value2: Int) -> Int
    func calculationName() -> String
}

class ResultPrinter {
    var delegate: Calculator? // Calculatorプロトコルに従うdelegateプロパティを定義
    
    func printResult(value1: Int, value2: Int) {
        let resultCalculation = delegate?.calculate(value1: value1, value2: value2)
        let nameCalculation = delegate?.calculationName()
        
        if let result = resultCalculation, let name = nameCalculation{
            print("\(name) answer is \(result).")
        }
    }
}

class AdditionCalculator: Calculator {
    func calculate(value1: Int, value2: Int) -> Int {
        value1 + value2 // 処理が一行なのでreturnを省略
    }
    func calculationName() -> String {
        "Addition"
    }
}

class SubtractionCalculator: Calculator {
    func calculate(value1: Int, value2: Int) -> Int {
        value1 - value2
    }
    
    func calculationName() -> String {
        "Subtraction"
    }
}

let printer = ResultPrinter()
printer.delegate = AdditionCalculator()
printer.printResult(value1: 1, value2: 2)

// delegateプロパティとSubtractionCalculatorクラスは共にCalculatorプロトコル型なので、delegateプロパティで新たにインスタンスを生成できる。
printer.delegate = SubtractionCalculator()
printer.printResult(value1: 1, value2: 2)
