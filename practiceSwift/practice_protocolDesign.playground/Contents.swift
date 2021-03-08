// 講義におけるUITextFieldDelegateプロトコル
protocol AdvancedLifeSupport {
    func performCPR()
}

// 講義におけるUITextFieldクラス
class EmergencyCallHandler {
    var delgate: AdvancedLifeSupport? //ポイント
    
    func assessSituation() {
        print("Can you tell me what happend?")
    }
    
    func medicalEmergency() {
        delgate?.performCPR() // ポイント
        
    }
}

// Paramedic: 医療補助員
struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delgate = self // ポイント
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second")
    }
}

class Doctor: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delgate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second")
    }
    
    // stethoscope: 聴診器
    func useStethoscope() {
        print("Listening for heart sounds.")
    }
}

//Surgeonは，Doctorを継承しているので，AdvancedLifeSupportプロトコルに従っている
class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees.")
    }
    
    func useElectricDrill() {
        print("Wirr...")
    }
}

let emilio = EmergencyCallHandler()
//let pete = Paramedic(handler: emilio)
let angela = Surgeon(handler: emilio)
emilio.assessSituation()
emilio.medicalEmergency() // init(handler:emilio)で初期化されたオブジェクトが生成されていないと，実行されない

