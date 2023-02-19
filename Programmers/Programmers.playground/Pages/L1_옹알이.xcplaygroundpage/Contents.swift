import Foundation
// aya, ye, woo, ma
// ex) ["aya", "yee", "u", "maa"]
let possibleBabble = ["aya", "ye", "woo", "ma"]

func solution(_ babbling:[String]) -> Int {
    
    let filterBabbling = babbling.filter{item in
        return isPossible(babble: item)
    }
    
    return filterBabbling.count
}

func isPossible(babble: String) -> Bool {
    
    var preIndex = -1
    
    var babbles = babble.reduce("", { preResult, item in
        var tempResult = preResult + String(item)
        if let index = possibleBabble.firstIndex(of: tempResult) {
            if(preIndex != index) {
                preIndex = index
                tempResult = ""
            }
        }
        return tempResult
    })
    
    return babbles.isEmpty
}


solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"])
