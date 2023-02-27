import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var check: Bool = false
    var reverseCard1: [String] = cards1.reversed()
    var reverseCard2: [String] = cards2.reversed()
    
    var reverseGoal: [String] = goal.reversed()
    
    while(reverseGoal.isEmpty == false) {
        if let word = reverseGoal.last {
            if let reverseWord1 = reverseCard1.last {
                if(word == reverseWord1) {
                    reverseCard1.popLast()
                    reverseGoal.popLast()
                    continue
                }
            }
            if let reverseWord2 = reverseCard2.last {
                if(word == reverseWord2) {
                    reverseCard2.popLast()
                    reverseGoal.popLast()
                    continue
                }
            }
        }

        break
    }
    
    if(reverseGoal.isEmpty) {
        check = true
    }
    return check == true ? "Yes" : "No"
}


