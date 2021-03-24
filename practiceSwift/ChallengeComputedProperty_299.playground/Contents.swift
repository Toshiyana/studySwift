import Foundation

let width: Float = 1.5
let height: Float = 4.5
var area: Float = width * height
let areaCoveredPerBucket: Float = 1.5

var bucketsOfPaint: Int {
    //壁のwidth, heightに応じて必要なbucketsOfPaintを取得
    get {
        let numberOfBuckets = area / areaCoveredPerBucket
        //必要なバケツの数は小数を切り上げる必要あり
        let roundedBuckets = ceilf(numberOfBuckets)//ceilf()の返り値はfloat
        return Int(roundedBuckets)//Int()は四捨五入
    }
    
    //bucketsの数によってペイントできるareaを算出
    set {
        area = Float(newValue) * areaCoveredPerBucket
    }
}

//getterの実行
//print(bucketsOfPaint)

//setterの実行
bucketsOfPaint = 12
print(area)
