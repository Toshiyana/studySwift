import UIKit

// staticはstructだけでなく，classでも同様に扱える
struct MyStructure {
    let instanceProperty = "ABC"//staticない場合は，instance property
    static let typeProperty = 123//static をつけることでtype propertyになる
    
    //methodの場合も同様
    func instanceMethod() {
        print("instance")
    }
    
    static func typeMethod() {
        print("type")
    }
}

let myStructure = MyStructure()
print(myStructure.instanceProperty)//instancePropertyはinstanceと結びついている（objectが生成してpropertyにアクセス）
myStructure.instanceMethod()

print(MyStructure.typeProperty)//typePropertyはtypeと結びついている（structを型としてpropertyにアクセス）
MyStructure.typeMethod()
