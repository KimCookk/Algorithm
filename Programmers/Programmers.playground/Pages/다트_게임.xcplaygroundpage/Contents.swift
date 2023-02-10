// 총 3번 0...10
// * => 해당 점수와 바로 전 점수 2배
// # => 해당 점수 마이너스
// * => 중첩 가능 => 4배
// * , # => 중첩가능
// S D T 만날 때까지

import Foundation

func solution(_ dartResult:String) -> Int {
    var dartResultArray: [DartScore] = []
    var powType = ["S", "D", "T"]
    var optionType = ["*" , "#"]
    var numberString = ""
    
    dartResult.forEach{ char in
        let stringUnit = String(char)
        
        if(powType.contains(stringUnit)) {
            if let score = Int(numberString), let pow = powType.firstIndex(of: stringUnit) {
                let dartScore = DartScore(score: score, powOfNumber: pow + 1, multipleNumber: 1)
                dartResultArray.append(dartScore)
            }
            numberString = ""
        } else {
            // 옵션 판단
            switch stringUnit {
            case "*" :
                dartResultArray[dartResultArray.count-1].multipleNumber *= 2
                if(dartResultArray.count - 2 >= 0) {
                    dartResultArray[dartResultArray.count-2].multipleNumber *= 2
                }
            case "#":
                dartResultArray[dartResultArray.count-1].multipleNumber *= -1
            default :
                numberString += stringUnit
            }
        }
    }
    
    
    return dartResultArray.reduce(0) { result, dartScore in
        return result + dartScore.getScore()
    }
}

struct DartScore {
    var score: Int
    var powOfNumber: Int
    var multipleNumber: Int
    
    func getScore() -> Int {
        return multipleNumber * Int(pow(Double(score), Double(powOfNumber)))
    }
}


solution("1S*2T*3S")

