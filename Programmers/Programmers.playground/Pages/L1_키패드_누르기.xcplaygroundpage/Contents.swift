// nubmers : 키패드를 눌러야하는 문자열
// hand : 오른손잡이 , 왼손잡이 , 거리가 똑같을 시 처리 방법
// 손의 위치 필요
import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var keypadPositions: [String: Posistion] = [:]
    var keypad: [String] = ["1","2","3","4","5","6","7","8","9","*","0","#"].reversed()
    var rightHandNumber = ["3", "6", "9", "#"]
    var leftHandNumber = ["1", "4", "7", "*"]
    
    var result = ""
    
    for row in 0...3{
        for column in 0...2 {
            if let key = keypad.popLast() {
                keypadPositions.updateValue(Posistion(x: column, y: row), forKey: key)
            }
        }
    }
    
    guard var rightHand = keypadPositions["#"], var leftHand = keypadPositions["*"] else {
        return result
    }
    
    
    for number in numbers {
        let numberString = String(number)
        if let targetNumberPosistion = keypadPositions[numberString] {
            
            if(rightHandNumber.contains(numberString)){
                result += "R"
                rightHand = targetNumberPosistion
            } else if (leftHandNumber.contains(numberString)) {
                result += "L"
                leftHand = targetNumberPosistion
            } else {
                let rightDistance = rightHand.getDistance(targetNumberPosistion)
                let leftDistance = leftHand.getDistance(targetNumberPosistion)
                
                if(rightDistance == leftDistance) {
                    if(hand == "right") {
                        result += "R"
                        rightHand = targetNumberPosistion
                    }
                    else {
                        result += "L"
                        leftHand = targetNumberPosistion
                    }
                } else {
                    if(rightDistance > leftDistance) {
                        result += "L"
                        leftHand = targetNumberPosistion
                    } else {
                        result += "R"
                        rightHand = targetNumberPosistion
                    }
                }
            }
        }
    }
    
    return result
}

struct Posistion {
    let x: Int
    let y: Int
    
    func getDistance(_ other: Posistion) -> Int {
        return abs(self.x - other.x) + abs(self.y - other.y)
    }
    
}

solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left")
