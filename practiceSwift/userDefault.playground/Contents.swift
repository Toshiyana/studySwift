//userDefault: localにdataを保存する時に利用（数kbiteのデータ，databaseではない）

import UIKit

//userDefaultを宣言
let defaults = UserDefaults.standard

//localにdataの保存
defaults.set(0.24, forKey: "Volume")
defaults.set(true, forKey: "MusicOn")
defaults.set("Taro", forKey: "PlayerName")
defaults.set(Date(), forKey: "AppLastOpenedByUser")
let array = [1,2,3]
defaults.set(array, forKey: "MyArray")
let dictionary = ["name": "Taro"]
defaults.set(dictionary, forKey: "dictionaryKey")

//dataの取り出し
let volume = defaults.float(forKey: "Volume")
let music = defaults.bool(forKey: "MusicOn")
let player = defaults.object(forKey: "PlayerName") as! String//objectは返り値Any?（stringの呼び出す関数はある）
let appLastOpenedByUser = defaults.object(forKey: "AppLastOpenedByUser")
let myArray = defaults.array(forKey: "MyArray") as! [Int]
let myDictionary = defaults.dictionary(forKey: "dictionaryKey")
