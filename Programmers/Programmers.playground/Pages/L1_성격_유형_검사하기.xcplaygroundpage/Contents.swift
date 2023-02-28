import Foundation
// RT / CF / JM / AN
// 지표의 점수가 0 인 경우 사전
// ["AN", "CF", "MJ", "RT", "NA"]    [5, 3, 2, 7, 5]    "TCMA"

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var typeChecker = TypeChecker()
    for index in 0..<survey.count {
        let sueveyType = survey[index]
        let choice = choices[index]
        typeChecker.setScore(sueveyType, choice)
    }
    
    
    return typeChecker.getType()
}


class TypeChecker{
    var score:[Int] = Array(repeating: 0, count: 4)
    
    enum ScoreType: String {
        case R, T, C, F, J, M, A, N
        
        var posistion: Int {
            switch self{
            case .R, .T:
                return 0
            case .C, .F:
                return 1
            case .J, .M:
                return 2
            case .A, .N:
                return 3
            }
        }
        
        var isFirst: Bool {
            switch self {
            case .R, .C, .J, .A:
                return true
            case .T, .F, .M, .N:
                return false
            }
        }
    }
    
    func setScore(_ scoreOrder: String, _ checkNumber: Int) {
        if let plusType = scoreOrder.last {
            if let plusScroeType = ScoreType(rawValue: String(plusType)) {
                var convertCheckNumber = checkNumber - 4
                if(plusScroeType.isFirst) {
                    convertCheckNumber *= -1
                }
                 
                let posistion = plusScroeType.posistion
                
                score[posistion] += convertCheckNumber
            }
        }
    }
    
    func getType() -> String {
        var result = ""
        
        if(score[0] > 0) {
            result += "T"
        } else {
            result += "R"
        }
        
        if(score[1] > 0) {
            result += "F"
        } else {
            result += "C"
        }
        
        if(score[2] > 0) {
            result += "M"
        } else {
            result += "J"
        }
        
        if(score[3] > 0) {
            result += "N"
        } else {
            result += "A"
        }
        
        return result
    }
}



